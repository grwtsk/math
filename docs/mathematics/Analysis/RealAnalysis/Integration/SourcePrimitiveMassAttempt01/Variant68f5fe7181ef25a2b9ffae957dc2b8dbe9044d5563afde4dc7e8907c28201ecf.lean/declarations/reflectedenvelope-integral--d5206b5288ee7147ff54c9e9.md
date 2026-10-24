# reflectedEnvelope_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:998e61a8-f85c-7462-0083-f504f0c2baa3",
  "kind": "theorem",
  "lexical_name": "reflectedEnvelope_integral",
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
  "slug": "reflectedenvelope-integral--d5206b5288ee7147ff54c9e9",
  "source": {
    "blob": "c618057896166f9f819bc3eea9ed442543851afb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5206b5288ee7147ff54c9e929360354aa3d524f45feec8cefa925260b9b13e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:998e61a8-f85c-7462-0083-f504f0c2baa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedEnvelope_integral :
    (∫ y : ℝ in Ioi 0,reflectedEnvelope y)=4032737280 := by
  have he : reflectedEnvelope=(fun y : ℝ => (2431/896:ℝ)*
      ((y^9*Real.exp (-y/2)+36*(y^8*Real.exp (-y/2)))+288*(y^7*Real.exp (-y/2)))) := by
    funext y
    unfold reflectedEnvelope
    ring
  rw [he,integral_const_mul,integral_add
    ((expHalfMoment_integrable 9).add ((expHalfMoment_integrable 8).const_mul 36))
    ((expHalfMoment_integrable 7).const_mul 288),
    integral_add (expHalfMoment_integrable 9) ((expHalfMoment_integrable 8).const_mul 36),
    integral_const_mul,integral_const_mul,expHalfMoment_integral,expHalfMoment_integral,
    expHalfMoment_integral]
  norm_num

/-- The polynomial-exponential representative is genuinely integrable on every finite interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c618057896166f9f819bc3eea9ed442543851afb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
