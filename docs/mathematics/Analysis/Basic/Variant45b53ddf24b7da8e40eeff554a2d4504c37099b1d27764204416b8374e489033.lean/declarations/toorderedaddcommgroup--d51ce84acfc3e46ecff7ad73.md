# toOrderedAddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b7e13381b96a1db710787c7078989d805f2b70ee246d5650ee2707fc6e3f169",
  "kind": "def",
  "lexical_name": "toOrderedAddCommGroup",
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
  "slug": "toorderedaddcommgroup--d51ce84acfc3e46ecff7ad73",
  "source": {
    "blob": "711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 429,
    "path": "GRWTSK/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d51ce84acfc3e46ecff7ad73103f6e181bd9ebb3573af8b4318cd1e78a3f81cc",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b7e13381b96a1db710787c7078989d805f2b70ee246d5650ee2707fc6e3f169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toOrderedAddCommGroup (h₁ : S.Pointed) (h₂ : S.Salient) : OrderedAddCommGroup E :=
  { toPartialOrder S h₁ h₂, show AddCommGroup E by infer_instance with
    add_le_add_left := by
      intro a b hab c
      change c + b - (c + a) ∈ S
      rw [add_sub_add_left_eq_sub]
      exact hab }
#align convex_cone.to_ordered_add_comm_group ConvexCone.toOrderedAddCommGroup

end AddCommGroup

section Module

variable [AddCommMonoid E] [Module 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
