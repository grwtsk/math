# Ultrafilter.semigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db7180306a0bfc09b1b8947c9887d354c81680570ead678ea1f7404c080ac569",
  "kind": "def",
  "lexical_name": "Ultrafilter.semigroup",
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
  "slug": "ultrafilter-semigroup--96b78a42634c405620baea55",
  "source": {
    "blob": "397493198f8ec73d0c515fe5fd5c44d36f9cc4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96b78a42634c405620baea5594939ef0ec4f6f67afb2753c5375673dc4fa2cd9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db7180306a0bfc09b1b8947c9887d354c81680570ead678ea1f7404c080ac569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Ultrafilter.semigroup {M} [Semigroup M] : Semigroup (Ultrafilter M) :=
  { Ultrafilter.mul with
    mul_assoc := fun U V W =>
      Ultrafilter.coe_inj.mp <|
        -- porting note: `simp` was slow to typecheck, replaced by `simp_rw`
        Filter.ext' fun p => by simp_rw [Ultrafilter.eventually_mul, mul_assoc] }
#align ultrafilter.semigroup Ultrafilter.semigroup
#align ultrafilter.add_semigroup Ultrafilter.addSemigroup

attribute [local instance] Ultrafilter.semigroup Ultrafilter.addSemigroup

-- We don't prove `continuous_mul_right`, because in general it is false!
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `397493198f8ec73d0c515fe5fd5c44d36f9cc4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
