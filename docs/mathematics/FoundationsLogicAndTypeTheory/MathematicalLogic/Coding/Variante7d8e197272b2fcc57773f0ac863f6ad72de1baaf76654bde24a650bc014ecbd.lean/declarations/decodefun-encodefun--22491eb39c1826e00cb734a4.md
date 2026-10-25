# decodeFun_encodeFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98f0322f-084c-691e-ea48-28c522973bd4",
  "kind": "theorem",
  "lexical_name": "decodeFun_encodeFun",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "decodefun-encodefun--22491eb39c1826e00cb734a4",
  "source": {
    "blob": "a9897a2d9a26145acd7c939f1b105c172c3190cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 282,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variante7d8e197272b2fcc57773f0ac863f6ad72de1baaf76654bde24a650bc014ecbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22491eb39c1826e00cb734a4d5ae7ea643999dcf09180a213c97dbbbc70bd82f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variante7d8e197272b2fcc57773f0ac863f6ad72de1baaf76654bde24a650bc014ecbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98f0322f-084c-691e-ea48-28c522973bd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem decodeFun_encodeFun (x : Fin m → Fin n) : decodeFun (encodeFun x) = x := by
  funext i; induction m with simp only [encodeFun, decodeFun]
  | zero => nomatch i
  | succ m ih =>
    have hn : 0 < n := Nat.zero_lt_of_lt (x 0).is_lt
    split
    · ext; simp [Nat.mod_eq_of_lt]
    · next i hi =>
      have : decodeFun (encodeFun fun k => x k.succ) ⟨i, Nat.lt_of_succ_lt_succ hi⟩
          = x ⟨i+1, hi⟩ := by rw [ih]; rfl
      simp [← this, Nat.mul_add_div hn, Nat.div_eq_of_lt]

/-- Encode `(i : Fin n) → Fin (f i)` into `Fin (Fin.prod f)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variante7d8e197272b2fcc57773f0ac863f6ad72de1baaf76654bde24a650bc014ecbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variante7d8e197272b2fcc57773f0ac863f6ad72de1baaf76654bde24a650bc014ecbd.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9897a2d9a26145acd7c939f1b105c172c3190cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
