# genLoopHomeoOfIsEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bfce64d48a5854760ca95b41fbfaabf9a866582ecef92bf36ec9d7da1124ed6",
  "kind": "def",
  "lexical_name": "genLoopHomeoOfIsEmpty",
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
  "slug": "genloophomeoofisempty--b114f7dca53e7d163cedf5e6",
  "source": {
    "blob": "a2f2e2c3b2c762ad7585c233f861ce5b50cb56e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 391,
    "path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b114f7dca53e7d163cedf5e6d2e4bc933354ad79059b4cc9c9232dc0cf9f14a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bfce64d48a5854760ca95b41fbfaabf9a866582ecef92bf36ec9d7da1124ed6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def genLoopHomeoOfIsEmpty (N x) [IsEmpty N] : Ω^ N X x ≃ₜ X where
  toFun f := f 0
  invFun y := ⟨ContinuousMap.const _ y, fun _ ⟨i, _⟩ => isEmptyElim i⟩
  left_inv f := by ext; exact congr_arg f (Subsingleton.elim _ _)
  right_inv _ := rfl
  continuous_invFun := ContinuousMap.const'.2.subtype_mk _

/-- The homotopy "group" indexed by an empty type is in bijection with
  the path components of `X`, aka the `ZerothHomotopy`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variantccdb6a930de3072f1d09f489178cbcb51deba6a24727d217ab7b1a3997598bb2.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2f2e2c3b2c762ad7585c233f861ce5b50cb56e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
