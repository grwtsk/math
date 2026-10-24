# hasFiniteMulSupport_valued

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08b1da7f-a627-a23d-e209-00241c465d79",
  "kind": "theorem",
  "lexical_name": "hasFiniteMulSupport_valued",
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
  "slug": "hasfinitemulsupport-valued--a4cb1ea534405660589d63fe",
  "source": {
    "blob": "25df442725bfadba5d045807de7692b5817c435c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 196,
    "path": "GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variant32d428e2f232d8a2c7407ed699dd4b4ddca8361de3a93ee8a996272cc1241b19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4cb1ea534405660589d63fe60d0eb2cf2451432912d0f11dfc4734104aaf0f2",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FiniteAdeleRing/Variant32d428e2f232d8a2c7407ed699dd4b4ddca8361de3a93ee8a996272cc1241b19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08b1da7f-a627-a23d-e209-00241c465d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteMulSupport_valued (a : 𝔸ᶠ[R, K]ˣ) :
    (fun v ↦ Valued.v (a.1 v)).HasFiniteMulSupport := by
  simp only [Function.HasFiniteMulSupport, Function.mulSupport, ne_eq]
  exact FiniteAdeleRing.unitsEquiv_finite_valued_eq_one _

variable (R)

variable (K) in
/-- The global embedding of the units of `K` into the units of `FiniteAdeleRing R K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FiniteAdeleRing/Variant32d428e2f232d8a2c7407ed699dd4b4ddca8361de3a93ee8a996272cc1241b19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variant32d428e2f232d8a2c7407ed699dd4b4ddca8361de3a93ee8a996272cc1241b19.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25df442725bfadba5d045807de7692b5817c435c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
