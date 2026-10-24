# exactPairingOfFullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10637d66fce8d2dfb9aa16ad44820b02b7c7ab4e781b320e84cf28c80e8f6516",
  "kind": "def",
  "lexical_name": "exactPairingOfFullyFaithful",
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
  "slug": "exactpairingoffullyfaithful--405408143ac4535e8af53b6f",
  "source": {
    "blob": "c4a6177f19390b9605eadc0e2c020c353a2099c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant6310ba8eeab612c20a96fb3aa83c7fd7c666eeee7f1efe4046ee4c17cc2182e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:405408143ac4535e8af53b6f1f401d3d369378461c4c9665ca2e7a12d585d47a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant6310ba8eeab612c20a96fb3aa83c7fd7c666eeee7f1efe4046ee4c17cc2182e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10637d66fce8d2dfb9aa16ad44820b02b7c7ab4e781b320e84cf28c80e8f6516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactPairingOfFullyFaithful [F.Full] [F.Faithful] (X Y : C)
    [ExactPairing (F.obj X) (F.obj Y)] : ExactPairing X Y :=
  exactPairingOfFaithful F (F.preimage (δ F _ _ ≫ ε_ _ _ ≫ (ε F)))
    (F.preimage (η F ≫ η_ _ _ ≫ μ F _ _)) (by simp) (by simp)

variable {F}
variable {G : D ⥤ C} (adj : F ⊣ G) [F.IsEquivalence]

/-- Pull back a left dual along an equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant6310ba8eeab612c20a96fb3aa83c7fd7c666eeee7f1efe4046ee4c17cc2182e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant6310ba8eeab612c20a96fb3aa83c7fd7c666eeee7f1efe4046ee4c17cc2182e4.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4a6177f19390b9605eadc0e2c020c353a2099c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
