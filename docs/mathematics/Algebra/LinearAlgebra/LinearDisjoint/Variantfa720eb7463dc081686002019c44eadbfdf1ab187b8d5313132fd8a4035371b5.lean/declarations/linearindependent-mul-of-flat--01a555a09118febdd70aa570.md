# linearIndependent_mul_of_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21499dc0-c582-9b95-6fab-6b53edb94e08",
  "kind": "theorem",
  "lexical_name": "linearIndependent_mul_of_flat",
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
  "slug": "linearindependent-mul-of-flat--01a555a09118febdd70aa570",
  "source": {
    "blob": "85213be5bb216bae650938535c70ffc17d762a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 395,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01a555a09118febdd70aa570e2875b37f58853e7a501da986341ecc74c556c10",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21499dc0-c582-9b95-6fab-6b53edb94e08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_mul_of_flat (H : A.LinearDisjoint B)
    (hf : Module.Flat R A ∨ Module.Flat R B)
    {κ ι : Type*} {a : κ → A} {b : ι → B} (ha : LinearIndependent R a)
    (hb : LinearIndependent R b) : LinearIndependent R fun (i : κ × ι) ↦ (a i.1).1 * (b i.2).1 :=
  Submodule.LinearDisjoint.linearIndependent_mul_of_flat H hf ha hb

/-- If `{ a_i }` is an `R`-basis of `A`, if `{ b_j }` is an `R`-basis of `B`,
such that the family `{ a_i * b_j }` in `S` is `R`-linearly independent,
then `A` and `B` are linearly disjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85213be5bb216bae650938535c70ffc17d762a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
