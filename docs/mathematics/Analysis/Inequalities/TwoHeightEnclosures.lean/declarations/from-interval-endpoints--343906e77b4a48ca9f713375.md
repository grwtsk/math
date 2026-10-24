# from_interval_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b302e798-f187-75be-5601-7b9fb419cd62",
  "kind": "theorem",
  "lexical_name": "from_interval_endpoints",
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
  "slug": "from-interval-endpoints--343906e77b4a48ca9f713375",
  "source": {
    "blob": "39e2ef8072d1d7118000455e02cac49bf0ae3dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 19,
    "path": "GRWTSK/Analysis/Inequalities/TwoHeightEnclosures.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:343906e77b4a48ca9f71337553dc32fb3ea514558550d543e01e26b02364826b",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/TwoHeightEnclosures.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b302e798-f187-75be-5601-7b9fb419cd62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem from_interval_endpoints
    (f₁ f₂ ell₁ ell₂ eta₁ eta₂ R₁ R₂ ε moment defect : ℝ)
    (hε : 0<ε)
    (hfirst : ell₁-eta₁≤f₁ ∧ f₁≤ell₁+eta₁+R₁^2/ε)
    (hsecond : ell₂-eta₂≤f₂ ∧ f₂≤ell₂+eta₂+R₂^2/(2*ε))
    (hreturn : moment≤(f₁-f₂)/ε+defect) :
    moment≤(ell₁+eta₁+R₁^2/ε-(ell₂-eta₂))/ε+defect := by
  exact inverse_moment_upper_of_two_height hε hfirst.2 hsecond.1 hreturn

/-- Wrong endpoint selection is refuted by an exact rational-valued real instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/TwoHeightEnclosures.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/TwoHeightEnclosures.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e2ef8072d1d7118000455e02cac49bf0ae3dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
