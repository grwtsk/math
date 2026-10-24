# edist_ne_top_of_mem_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71d2bed0-30a5-2255-21f6-3bc266a5f277",
  "kind": "theorem",
  "lexical_name": "edist_ne_top_of_mem_ball",
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
  "slug": "edist-ne-top-of-mem-ball--94aef30ec61473cba303212d",
  "source": {
    "blob": "d557b7f2be78cd090be4a19db377d02bae98d252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 569,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94aef30ec61473cba303212d1f8575d59f40ebf3ec27a98939662f1ddb33e045",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71d2bed0-30a5-2255-21f6-3bc266a5f277`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_ne_top_of_mem_ball {a : β} {r : ℝ≥0∞} (x y : eball a r) : edist x.1 y.1 ≠ ∞ :=
  ne_of_lt <|
    calc
      edist x y ≤ edist a x + edist a y := edist_triangle_left x.1 y.1 a
      _ < r + r := by rw [edist_comm a x, edist_comm a y]; exact ENNReal.add_lt_add x.2 y.2
      _ ≤ ∞ := le_top

/-- Each ball in an extended metric space gives us a metric space, as the edist
is everywhere finite. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Varianta9e6ad952de03520f09626184f0fc11ba7dc1991bf17024c97610071ea231138.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d557b7f2be78cd090be4a19db377d02bae98d252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
