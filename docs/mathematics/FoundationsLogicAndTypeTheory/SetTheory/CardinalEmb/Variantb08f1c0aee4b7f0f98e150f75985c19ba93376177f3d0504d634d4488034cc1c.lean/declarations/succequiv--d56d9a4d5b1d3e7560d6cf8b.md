# succEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7076628e330f398ccd4dca2b8dc10d22b5a58fef199e01a3bb5ca122cbf3b02f",
  "kind": "def",
  "lexical_name": "succEquiv",
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
  "slug": "succequiv--d56d9a4d5b1d3e7560d6cf8b",
  "source": {
    "blob": "dcdcfbf208753a1e8aea63502525c472b94d03a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d56d9a4d5b1d3e7560d6cf8bb27d813a79a0b52414bc97af0acfc1b54f749ac8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7076628e330f398ccd4dca2b8dc10d22b5a58fef199e01a3bb5ca122cbf3b02f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def succEquiv (i : ι) : (E⟮<i⁺⟯ →ₐ[F] Ē) ≃ (E⟮<i⟯ →ₐ[F] Ē) × X i :=
  (((show _ ≃ₐ[F] E⟮<i⟯⟮b (φ i)⟯ from equivOfEq (filtration_succ i))).arrowCongr .refl).trans <|
    algHomEquivSigma (B := E⟮<i⟯).trans <| .sigmaEquivProdOfEquiv fun _ ↦
      (@Field.embEquivOfIsAlgClosed _ _ _ _ _ _ _ (_) <|
        (Algebra.IsAlgebraic.tower_top (K := F) _).of_injective (val _) Subtype.val_injective).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdcfbf208753a1e8aea63502525c472b94d03a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
