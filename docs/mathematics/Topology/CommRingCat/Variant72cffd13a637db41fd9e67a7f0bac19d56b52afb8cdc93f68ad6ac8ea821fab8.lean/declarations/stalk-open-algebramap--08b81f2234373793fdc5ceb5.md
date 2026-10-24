# stalk_open_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2614423e-5162-c8b6-b6c0-10f65f4d7209",
  "kind": "theorem",
  "lexical_name": "stalk_open_algebraMap",
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
  "slug": "stalk-open-algebramap--08b81f2234373793fdc5ceb5",
  "source": {
    "blob": "34ded50dd2dcc7a608d6256429657aa2cbf4178d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 288,
    "path": "GRWTSK/Topology/CommRingCat/Variant72cffd13a637db41fd9e67a7f0bac19d56b52afb8cdc93f68ad6ac8ea821fab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08b81f2234373793fdc5ceb5a0474dd30753d50b42b9b268476fad37f0b9e68e",
  "verification": {
    "reference": "docs/verification/Topology/CommRingCat/Variant72cffd13a637db41fd9e67a7f0bac19d56b52afb8cdc93f68ad6ac8ea821fab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2614423e-5162-c8b6-b6c0-10f65f4d7209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalk_open_algebraMap {X : TopCat.{v}} (F : X.Presheaf CommRingCat) {U : Opens X} (x : U) :
    algebraMap (F.obj <| op U) (F.stalk x) = (F.germ U x.1 x.2).hom :=
  rfl

end TopCat.Presheaf

end Stalks

noncomputable section Gluing

namespace TopCat.Sheaf

open TopologicalSpace Opposite CategoryTheory

variable {C : Type u} [Category.{v} C] {X : TopCat.{w}}

variable (F : X.Sheaf C) (U V : Opens X)

open CategoryTheory.Limits

/-- `F(U ⊔ V)` is isomorphic to the `eq_locus` of the two maps `F(U) × F(V) ⟶ F(U ⊓ V)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CommRingCat/Variant72cffd13a637db41fd9e67a7f0bac19d56b52afb8cdc93f68ad6ac8ea821fab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CommRingCat/Variant72cffd13a637db41fd9e67a7f0bac19d56b52afb8cdc93f68ad6ac8ea821fab8.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ded50dd2dcc7a608d6256429657aa2cbf4178d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
