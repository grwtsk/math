# StrictConcaveOn.lt_on_open_segment'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:710a85ad-d0e6-3a19-fc07-fa09a452aba7",
  "kind": "theorem",
  "lexical_name": "StrictConcaveOn.lt_on_open_segment'",
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
  "slug": "strictconcaveon-lt-on-open-segment--094fb425158c5b70e7704972",
  "source": {
    "blob": "f96a57d1735eca51c569b7d61324680304915de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 685,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:094fb425158c5b70e7704972b91a87944b3a81981560d8172c6fb42304dd6554",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:710a85ad-d0e6-3a19-fc07-fa09a452aba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConcaveOn.lt_on_open_segment' (hf : StrictConcaveOn 𝕜 s f) {x y : E} (hx : x ∈ s)
    (hy : y ∈ s) (hxy : x ≠ y) {a b : 𝕜} (ha : 0 < a) (hb : 0 < b) (hab : a + b = 1) :
    min (f x) (f y) < f (a • x + b • y) :=
  hf.dual.lt_on_open_segment' hx hy hxy ha hb hab
#align strict_concave_on.lt_on_open_segment' StrictConcaveOn.lt_on_open_segment'

/-- A strictly convex function on an open segment is strictly upper-bounded by the max of its
endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96a57d1735eca51c569b7d61324680304915de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
