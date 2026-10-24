# hasSum_of_monomials_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29c7072a-5e88-59ae-cca2-149099899f66",
  "kind": "theorem",
  "lexical_name": "hasSum_of_monomials_self",
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
  "slug": "hassum-of-monomials-self--69288549dc58ade3d152c133",
  "source": {
    "blob": "9ed47f9528a50e06c606e90ac9cb906813bca790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 334,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69288549dc58ade3d152c13395540ad015387f1a1865145b240a5a6645c275c7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29c7072a-5e88-59ae-cca2-149099899f66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_of_monomials_self (f : PowerSeries R) :
    HasSum (fun d : ℕ => monomial d (coeff d f)) f := by
  rw [← (Finsupp.uniqueLinearEquiv ℕ ℕ ()).toEquiv.hasSum_iff]
  convert! MvPowerSeries.WithPiTopology.hasSum_of_monomials_self f
  simp only [LinearEquiv.coe_toEquiv, comp_apply, monomial, coeff]
  congr
  all_goals { ext; simp }

/-- If the coefficient space is T2, then the power series is `tsum` of its monomials -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed47f9528a50e06c606e90ac9cb906813bca790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
