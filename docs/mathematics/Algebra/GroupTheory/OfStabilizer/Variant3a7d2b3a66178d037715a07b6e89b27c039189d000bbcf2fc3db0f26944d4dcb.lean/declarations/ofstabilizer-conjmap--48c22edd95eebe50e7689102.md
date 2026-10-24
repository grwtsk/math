# ofStabilizer.conjMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b7d0535c4c9da01b7994518d2b7c423f6c87cd4ddc80dcd2e79bef79bcb9304",
  "kind": "def",
  "lexical_name": "ofStabilizer.conjMap",
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
  "slug": "ofstabilizer-conjmap--48c22edd95eebe50e7689102",
  "source": {
    "blob": "135b74e30ed958a1acb5a0da8e61741c3407a74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 117,
    "path": "GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48c22edd95eebe50e7689102ad9728c79fac680b3be58ef8b514dd964e12cbfe",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b7d0535c4c9da01b7994518d2b7c423f6c87cd4ddc80dcd2e79bef79bcb9304`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofStabilizer.conjMap {g : G} {a b : α} (hg : b = g • a) :
    MulActionHom (stabilizerEquivStabilizer hg) (ofStabilizer G a) (ofStabilizer G b) where
  toFun x := ⟨g • x.val, fun hy ↦ x.prop (by simpa [hg] using hy)⟩
  map_smul' := fun ⟨k, hk⟩ ↦ by
    simp [← SetLike.coe_eq_coe, subgroup_smul_def, stabilizerEquivStabilizer, ← smul_assoc]

variable {g  h k: G} {a b c: α}
variable (hg : b = g • a) (hh : c = h • b) (hk : c = k • a)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135b74e30ed958a1acb5a0da8e61741c3407a74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
