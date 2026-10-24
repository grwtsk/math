# affine_carry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c466bfa-66d6-e661-51fe-358aab68ebfd",
  "kind": "theorem",
  "lexical_name": "affine_carry",
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
  "slug": "affine-carry--66700efea2a444f54e6fef46",
  "source": {
    "blob": "1ab1008baa4e4946218b25fb5f45244582bb721a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 145,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variante676abb620323d6957721b19cbbf1abcdfd2879f62679c88916576d713ee0e80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66700efea2a444f54e6fef462bafb783168b4974d6097aa699ac6faa954e3ca6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variante676abb620323d6957721b19cbbf1abcdfd2879f62679c88916576d713ee0e80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c466bfa-66d6-e661-51fe-358aab68ebfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_carry (c b d : ι → ℝ) (f g : ℝ → ℝ) (anchor : ℝ) :
    readout c b d f g = mass b * f anchor +
      (firstMoment c b d - anchor * mass b) * g anchor +
      ∑ i, (b i * (f (c i) - f anchor - (c i - anchor) * g anchor) +
        d i * (g (c i) - g anchor)) := by
  calc
    _ = ∑ i, (b i * f anchor +
        (c i * b i + d i - anchor * b i) * g anchor +
        (b i * (f (c i) - f anchor - (c i - anchor) * g anchor) +
          d i * (g (c i) - g anchor))) := by
      unfold readout
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ = _ := by
      unfold mass firstMoment
      simp only [sub_mul, add_mul, Finset.sum_add_distrib,
        Finset.sum_sub_distrib, Finset.sum_mul, Finset.mul_sum]

/-- The centered residual annihilates every affine test, at arbitrary magnitudes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variante676abb620323d6957721b19cbbf1abcdfd2879f62679c88916576d713ee0e80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variante676abb620323d6957721b19cbbf1abcdfd2879f62679c88916576d713ee0e80.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab1008baa4e4946218b25fb5f45244582bb721a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
