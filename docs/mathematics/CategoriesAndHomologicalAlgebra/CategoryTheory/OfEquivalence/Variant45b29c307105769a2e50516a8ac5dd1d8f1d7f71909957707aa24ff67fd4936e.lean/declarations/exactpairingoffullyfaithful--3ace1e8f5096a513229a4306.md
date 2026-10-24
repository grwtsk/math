# exactPairingOfFullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dd812f540c379a69d7fb06ee90f76f6ff29bcbdab8d8e1a572e1d29e831a29e",
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
  "slug": "exactpairingoffullyfaithful--3ace1e8f5096a513229a4306",
  "source": {
    "blob": "d887f78a94eae4da3555f4a435e87976af85b850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant45b29c307105769a2e50516a8ac5dd1d8f1d7f71909957707aa24ff67fd4936e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ace1e8f5096a513229a43065adbe86eb5b8ce68ded3475c16a792691ffa762d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant45b29c307105769a2e50516a8ac5dd1d8f1d7f71909957707aa24ff67fd4936e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dd812f540c379a69d7fb06ee90f76f6ff29bcbdab8d8e1a572e1d29e831a29e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–59.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant45b29c307105769a2e50516a8ac5dd1d8f1d7f71909957707aa24ff67fd4936e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant45b29c307105769a2e50516a8ac5dd1d8f1d7f71909957707aa24ff67fd4936e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d887f78a94eae4da3555f4a435e87976af85b850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
