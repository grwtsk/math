# Equiv.optionCongr_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2722af3-3601-d08a-9eb4-5369b3ef089d",
  "kind": "theorem",
  "lexical_name": "Equiv.optionCongr_sign",
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
  "slug": "equiv-optioncongr-sign--6438fc006b33e27884c33d8d",
  "source": {
    "blob": "6c5c80047dbea199511090043a7e3a04071ac2da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6438fc006b33e27884c33d8d22d1742ca54f596255f7b2c9abbb91cf40987cd4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2722af3-3601-d08a-9eb4-5369b3ef089d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.optionCongr_sign {α : Type*} [DecidableEq α] [Fintype α] (e : Perm α) :
    Perm.sign e.optionCongr = Perm.sign e := by
  induction e using Perm.swap_induction_on with
  | one => simp [Perm.one_def]
  | swap_mul f x y hne h =>
    simp [h, hne, Perm.mul_def, ← Equiv.optionCongr_trans]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c5c80047dbea199511090043a7e3a04071ac2da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
