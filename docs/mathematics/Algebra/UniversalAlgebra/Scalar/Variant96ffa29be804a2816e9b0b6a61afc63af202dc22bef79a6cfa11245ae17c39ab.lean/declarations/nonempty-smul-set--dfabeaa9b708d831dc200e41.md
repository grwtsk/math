# Nonempty.smul_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2d1d9f0-71f4-207a-5590-8c17d0d91b2f",
  "kind": "lemma",
  "lexical_name": "Nonempty.smul_set",
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
  "slug": "nonempty-smul-set--dfabeaa9b708d831dc200e41",
  "source": {
    "blob": "40d80ccb991e9755f8e681c5d5b5ed22c1f1e106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 196,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Scalar/Variant96ffa29be804a2816e9b0b6a61afc63af202dc22bef79a6cfa11245ae17c39ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfabeaa9b708d831dc200e412ac2954052b88400464e61b648e67a75c196ce60",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Scalar/Variant96ffa29be804a2816e9b0b6a61afc63af202dc22bef79a6cfa11245ae17c39ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2d1d9f0-71f4-207a-5590-8c17d0d91b2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma Nonempty.smul_set : s.Nonempty → (a • s).Nonempty := Nonempty.image _

end SMulSet

section Pi

variable {M ι : Type*} {π : ι → Type*} [∀ i, SMul M (π i)]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Scalar/Variant96ffa29be804a2816e9b0b6a61afc63af202dc22bef79a6cfa11245ae17c39ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Scalar/Variant96ffa29be804a2816e9b0b6a61afc63af202dc22bef79a6cfa11245ae17c39ab.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d80ccb991e9755f8e681c5d5b5ed22c1f1e106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
