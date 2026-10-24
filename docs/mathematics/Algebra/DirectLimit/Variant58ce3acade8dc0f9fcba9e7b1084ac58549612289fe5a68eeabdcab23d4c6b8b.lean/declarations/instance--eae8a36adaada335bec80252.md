# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43da764bddc240ff48ecef73d3272e483661ce2e75a1b26a2385f91b7cac0edf",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--eae8a36adaada335bec80252",
  "source": {
    "blob": "0594ee4303d0d4e46f9364056f572e4fbb72f8c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 248,
    "path": "GRWTSK/Algebra/DirectLimit/Variant58ce3acade8dc0f9fcba9e7b1084ac58549612289fe5a68eeabdcab23d4c6b8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eae8a36adaada335bec80252aa284d28e7068fb16954b4282367c3cdc3497bd7",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variant58ce3acade8dc0f9fcba9e7b1084ac58549612289fe5a68eeabdcab23d4c6b8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43da764bddc240ff48ecef73d3272e483661ce2e75a1b26a2385f91b7cac0edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : StarAddMonoid (DirectLimit G f) where
  star_add := DirectLimit.induction₂ _ fun i _ _ ↦ by simp_rw [add_def, star_def, star_add, add_def]

end StarAddMonoid

section Group
variable [∀ i, Group (G i)] [Group C]
variable [∀ i j h, MonoidHomClass (T h) (G i) (G j)] [∀ i, MonoidHomClass (H i) (G i) C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variant58ce3acade8dc0f9fcba9e7b1084ac58549612289fe5a68eeabdcab23d4c6b8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variant58ce3acade8dc0f9fcba9e7b1084ac58549612289fe5a68eeabdcab23d4c6b8b.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0594ee4303d0d4e46f9364056f572e4fbb72f8c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
