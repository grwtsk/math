# norm_sq_inner_reference_exponential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:463fe0fa-0906-836b-46cf-f4559b760d79",
  "kind": "theorem",
  "lexical_name": "norm_sq_inner_reference_exponential",
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
  "slug": "norm-sq-inner-reference-exponential--237a38d15de4ff20bddc5e37",
  "source": {
    "blob": "c66f3cab110a1f0ae3c7e5b9d47ab44dce6aea4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialStatements/Variante98807095d2f950d576279c388394b3a2e8af9ecdb99011fdd45acc1b700037e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:237a38d15de4ff20bddc5e37ad42b442cf17a10b65e0ae2f769bd565b586ddc1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLineExponentialStatements/Variante98807095d2f950d576279c388394b3a2e8af9ecdb99011fdd45acc1b700037e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:463fe0fa-0906-836b-46cf-f4559b760d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sq_inner_reference_exponential (z : ℂ) (hz : 0 < z.re) :
    ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 = 1 / ‖1 + z‖ ^ 2 := by
  rw [inner_reference_exponential, norm_div, norm_one, div_pow, one_pow]
  have hn : ‖1 + conj z‖ = ‖1 + z‖ := by
    simpa using Complex.norm_conj (1 + z)
  rw [hn]

/-- The exact coefficient available if a separate operator proof later supplies a kernel vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLineExponentialStatements/Variante98807095d2f950d576279c388394b3a2e8af9ecdb99011fdd45acc1b700037e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialStatements/Variante98807095d2f950d576279c388394b3a2e8af9ecdb99011fdd45acc1b700037e.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c66f3cab110a1f0ae3c7e5b9d47ab44dce6aea4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
