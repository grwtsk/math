# li.two_approx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de27f41e12c834060ee8723d6924d6402f6ec2f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6729d20c-e218-4c5b-e103-ee6ab651b687",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d2964dd-58b3-75d1-5e3d-b20b1e51a459",
  "kind": "theorem",
  "lexical_name": "li.two_approx",
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
  "slug": "li-two-approx--e9309cd6ce218ac33ca5898c",
  "source": {
    "blob": "de27f41e12c834060ee8723d6924d6402f6ec2f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 211,
    "path": "GRWTSK/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9309cd6ce218ac33ca5898cc6df1b52916a363e24072309c84b073a064d552d",
  "verification": {
    "reference": "docs/verification/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d2964dd-58b3-75d1-5e3d-b20b1e51a459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li.two_approx : li 2 ∈ Set.Icc 1.0451 1.0452 := by
  rw [li_eq_eulerMascheroni_add_log_log_add_tsum (show (1 : ℝ) < 2 by norm_num)]
  have hll_lo : (-0.366513 : ℝ) ≤ Real.log (Real.log 2) := by interval_decide
  have hll_hi : Real.log (Real.log 2) ≤ -0.366512 := by interval_decide

  constructor <;> linarith [hs_lo, hs_hi, hγ_lo, hγ_hi]

/-- The local li definition matches Li2Bounds.li
(they are definitionally equal). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de27f41e12c834060ee8723d6924d6402f6ec2f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
