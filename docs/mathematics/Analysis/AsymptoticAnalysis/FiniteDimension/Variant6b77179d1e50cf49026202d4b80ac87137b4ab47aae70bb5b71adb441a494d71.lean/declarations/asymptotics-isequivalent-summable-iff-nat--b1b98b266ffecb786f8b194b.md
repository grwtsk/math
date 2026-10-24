# Asymptotics.IsEquivalent.summable_iff_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ffdf38c-dc1b-db25-18c6-5cd14039912e",
  "kind": "theorem",
  "lexical_name": "Asymptotics.IsEquivalent.summable_iff_nat",
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
  "slug": "asymptotics-isequivalent-summable-iff-nat--b1b98b266ffecb786f8b194b",
  "source": {
    "blob": "ed527ab706d4ffa4d76783100b9caa4100d7cbf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 710,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1b98b266ffecb786f8b194b57b279d969b66c2b5950d6f34b65fff090897349",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ffdf38c-dc1b-db25-18c6-5cd14039912e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 710–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Asymptotics.IsEquivalent.summable_iff_nat {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] [FiniteDimensional ℝ E] {f : ℕ → E} {g : ℕ → E} (h : f ~[atTop] g) :
    Summable f ↔ Summable g :=
  h.isTheta.summable_iff_nat

namespace Module.Basis

variable {ι R M : Type*} [Finite ι]
  [NontriviallyNormedField R] [CompleteSpace R]
  [AddCommGroup M] [TopologicalSpace M] [IsTopologicalAddGroup M] [T2Space M]
  [Module R M] [ContinuousSMul R M] (B : Module.Basis ι R M)

-- Note that Finsupp has no topology so we need the coercion, see
-- https://leanprover.zulipchat.com/#narrow/channel/217875-Is-there-code-for-X.3F/topic/TVS.20and.20NormedSpace.20on.20Finsupp.2C.20DFinsupp.2C.20DirectSum.2C.20.2E.2E/near/512890984
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean#L710).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed527ab706d4ffa4d76783100b9caa4100d7cbf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
