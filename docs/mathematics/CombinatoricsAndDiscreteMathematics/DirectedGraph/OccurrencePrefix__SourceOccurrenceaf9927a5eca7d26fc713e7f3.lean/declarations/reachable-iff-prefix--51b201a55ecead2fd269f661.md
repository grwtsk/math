# reachable_iff_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d20f4ad6-c8fd-2c09-614c-366b7327c1a9",
  "kind": "theorem",
  "lexical_name": "reachable_iff_prefix",
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
  "slug": "reachable-iff-prefix--51b201a55ecead2fd269f661",
  "source": {
    "blob": "26ba9e7cff89deab8a368c276571b980c9c96a43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51b201a55ecead2fd269f661505ac7cd3b0a41550c538362cdeec4d4ad801761",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d20f4ad6-c8fd-2c09-614c-366b7327c1a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reachable_iff_prefix (first second : Occurrence root) :
    Reachable first second ↔ trace first <+: trace second := by
  constructor
  · rintro ⟨lifted⟩
    refine ⟨EdgeTrace.encodePath ((projection root).mapPath lifted), ?_⟩
    exact (trace_comp first ((projection root).mapPath lifted)).symm.trans
      (congrArg trace (ofPath_comp_projection lifted))
  · rintro ⟨suffix, hsuffix⟩
    have hvalid : EdgeTrace.ValidFrom root (trace first ++ suffix) := by
      rw [hsuffix]
      exact EdgeTrace.validFrom_encodePath second.path
    have hvalidSuffix : EdgeTrace.ValidFrom first.endpoint suffix := by
      have h := (EdgeTrace.validFrom_append_iff root (trace first) suffix).mp hvalid
      simpa only [trace, EdgeTrace.encode, EdgeTrace.finish_encodePath] using h.2
    let decoded := EdgeTrace.decode first.endpoint suffix hvalidSuffix
    obtain ⟨lifted, hlift, _⟩ := unique_finite_lift first decoded
    have htail : EdgeTrace.encodePath ((projection root).mapPath lifted.2) = suffix := by
      have hequal := congrArg (EdgeTrace.encode first.endpoint) hlift
      change EdgeTrace.encodePath ((projection root).mapPath lifted.2) =
        EdgeTrace.encode first.endpoint decoded at hequal
      exact hequal.trans (EdgeTrace.encode_decode first.endpoint suffix hvalidSuffix)
    have htrace : trace lifted.1 = trace second := by
      calc
        trace lifted.1 =
            trace (ofPath (first.path.comp ((projection root).mapPath lifted.2))) :=
          congrArg trace (ofPath_comp_projection lifted.2).symm
        _ = trace first ++ EdgeTrace.encodePath ((projection root).mapPath lifted.2) :=
          trace_comp first ((projection root).mapPath lifted.2)
        _ = trace first ++ suffix := by rw [htail]
        _ = trace second := hsuffix
    have htarget : lifted.1 = second := trace_injective htrace
    exact ⟨htarget ▸ lifted.2⟩

/-- Base vertices that actually admit a path from the chosen root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ba9e7cff89deab8a368c276571b980c9c96a43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
