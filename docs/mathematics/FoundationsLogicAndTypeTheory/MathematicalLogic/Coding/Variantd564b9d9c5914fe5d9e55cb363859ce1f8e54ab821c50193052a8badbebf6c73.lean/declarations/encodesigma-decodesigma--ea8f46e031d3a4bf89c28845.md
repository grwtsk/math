# encodeSigma_decodeSigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7028cb7a-dd63-1efc-b302-581921ffd22b",
  "kind": "theorem",
  "lexical_name": "encodeSigma_decodeSigma",
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
  "slug": "encodesigma-decodesigma--ea8f46e031d3a4bf89c28845",
  "source": {
    "blob": "a706f5c5966d21258c26604b9241b83ddd169836",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd564b9d9c5914fe5d9e55cb363859ce1f8e54ab821c50193052a8badbebf6c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8f46e031d3a4bf89c2884553fe3f5500e192437773f4617095e748f16e01b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd564b9d9c5914fe5d9e55cb363859ce1f8e54ab821c50193052a8badbebf6c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7028cb7a-dd63-1efc-b302-581921ffd22b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem encodeSigma_decodeSigma (f : Fin n → Nat) (x : Fin (Fin.sum f)) :
    encodeSigma f (decodeSigma f x) = x := by
  induction n with
  | zero => absurd x.is_lt; simp
  | succ n ih =>
    simp only [decodeSigma]
    split
    · rfl
    · next h1 =>
      have h2 : x - f 0 < Fin.sum (f ·.succ) := by grind [sum_succ]
      have : encodeSigma (f ·.succ) (decodeSigma (f ·.succ) ⟨x - f 0, h2⟩) = ↑x - f 0 := by
        rw [ih]
      ext; simp only [encodeSigma]
      conv => rhs; rw [← Nat.add_sub_of_le (Nat.le_of_not_gt h1)]
      congr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd564b9d9c5914fe5d9e55cb363859ce1f8e54ab821c50193052a8badbebf6c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd564b9d9c5914fe5d9e55cb363859ce1f8e54ab821c50193052a8badbebf6c73.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a706f5c5966d21258c26604b9241b83ddd169836` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
