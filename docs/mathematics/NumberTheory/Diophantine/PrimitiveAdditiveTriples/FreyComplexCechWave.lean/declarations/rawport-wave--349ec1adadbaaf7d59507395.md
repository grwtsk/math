# rawPort_wave

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:731a5f5a-a628-e927-8a24-64659f7768f4",
  "kind": "theorem",
  "lexical_name": "rawPort_wave",
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
  "slug": "rawport-wave--349ec1adadbaaf7d59507395",
  "source": {
    "blob": "a272c7f5aeb65de79e1372f4a43c786fd2ec5a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 223,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:349ec1adadbaaf7d595073957aa7972f14024dc225b762959aa70109b1cca3ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:731a5f5a-a628-e927-8a24-64659f7768f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawPort_wave (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ)
    (angle tau : ℝ) (v : Data a b k) :
    rawPort a b l hl k (wave a b k angle tau v) = wave a b k angle tau (port a b l hl k v) := by
  have hp : port a b l hl k (scaleData a b k (rotation angle) (evolve a b k tau v)) =
      scaleData a b k (rotation angle) (evolve a b k tau (port a b l hl k v)) := by
    rw [← port_evolve]
    apply Prod.ext <;> funext p <;> exact (complexLift a b l hl k).map_smul _ _
  have he : rawPort a b l hl k (encode a b k
      (scaleData a b k (rotation angle) (evolve a b k tau v))) =
      encode a b k (port a b l hl k (scaleData a b k (rotation angle) (evolve a b k tau v))) := by
    unfold rawPort encode port phaseEncode
    congr 1
    funext p
    exact (complexLift a b l hl k).map_smul _ _
  change rawPort a b l hl k (encode a b k _) = encode a b k _
  rw [he, hp]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexCechWave
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a272c7f5aeb65de79e1372f4a43c786fd2ec5a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
