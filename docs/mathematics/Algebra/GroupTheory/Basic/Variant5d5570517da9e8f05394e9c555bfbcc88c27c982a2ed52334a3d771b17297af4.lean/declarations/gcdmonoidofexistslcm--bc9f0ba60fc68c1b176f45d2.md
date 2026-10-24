# gcdMonoidOfExistsLCM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56982f67a8c3f515749888950f21f7a71299b2e341e75d6cba559d1277cfac16",
  "kind": "def",
  "lexical_name": "gcdMonoidOfExistsLCM",
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
  "slug": "gcdmonoidofexistslcm--bc9f0ba60fc68c1b176f45d2",
  "source": {
    "blob": "7d4da1132cb4c4293d9b9a11b5c082de3e539316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1336,
    "line": 1328,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc9f0ba60fc68c1b176f45d2bc66dc875f95cffbd15197e5a3c9d054d3d9cf29",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56982f67a8c3f515749888950f21f7a71299b2e341e75d6cba559d1277cfac16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1328–1336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def gcdMonoidOfExistsLCM [DecidableEq α]
    (h : ∀ a b : α, ∃ c : α, ∀ d : α, a ∣ d ∧ b ∣ d ↔ c ∣ d) : GCDMonoid α :=
  gcdMonoidOfLCM (fun a b => Classical.choose (h a b))
    (fun a b => ((Classical.choose_spec (h a b) (Classical.choose (h a b))).2 dvd_rfl).1)
    (fun a b => ((Classical.choose_spec (h a b) (Classical.choose (h a b))).2 dvd_rfl).2)
    fun {a b c} ac ab => (Classical.choose_spec (h c b) a).1 ⟨ac, ab⟩
#align gcd_monoid_of_exists_lcm gcdMonoidOfExistsLCM

/-- Define a `NormalizedGCDMonoid` structure on a monoid just from the existence of an `lcm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean#L1328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4da1132cb4c4293d9b9a11b5c082de3e539316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
