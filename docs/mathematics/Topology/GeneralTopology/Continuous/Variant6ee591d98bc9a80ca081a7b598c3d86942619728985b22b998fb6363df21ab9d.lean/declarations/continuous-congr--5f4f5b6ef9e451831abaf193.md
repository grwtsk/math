# continuous_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a628721e577abcbe972a235940d811fff0e5c35f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c051c21e-5a15-99f6-7501-49105cf2c038",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb56c50f-daa5-a556-92ad-f5c2b735e01d",
  "kind": "theorem",
  "lexical_name": "continuous_congr",
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
  "slug": "continuous-congr--5f4f5b6ef9e451831abaf193",
  "source": {
    "blob": "a628721e577abcbe972a235940d811fff0e5c35f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f4f5b6ef9e451831abaf193a60b16934e4d80897a3642093294391c04058bf3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb56c50f-daa5-a556-92ad-f5c2b735e01d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_congr
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    {f g : X → Y}
    (hf : Continuous TX TY f)
    (hfg : ∀ x, f x = g x) :
    Continuous TX TY g := by
  intro V hV
  have hopen := hf V hV
  have heq : Set.preimage f V = Set.preimage g V := by
    apply Set.ext
    intro x
    change V (f x) ↔ V (g x)
    rw [hfg x]
  rw [← heq]
  exact hopen

/-- Every map out of a discrete space is continuous only when its preimages are open;
for the discrete topology this holds automatically. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a628721e577abcbe972a235940d811fff0e5c35f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
