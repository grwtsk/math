# phiC_supp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13deecda-4a02-50be-e7e2-289b79e4ad27",
  "kind": "theorem",
  "lexical_name": "phiC_supp",
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
  "slug": "phic-supp--d2e2049e83c11c8037eb7c4b",
  "source": {
    "blob": "542c3d9fe63913f0463ed0dfba2b70e0485d588a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 290,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2e2049e83c11c8037eb7c4b05da839a85591bda94f29624336642a77abd32a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13deecda-4a02-50be-e7e2-289b79e4ad27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phiC_supp (h : WindowAt P T C) : ∀ u, (P.phi T u : ℂ) ≠ 0 → |u| ≤ P.L T / 2 := by
  intro u hu
  have hu' : P.phi T u ≠ 0 := fun h0 => hu (by rw [h0, Complex.ofReal_zero])
  exact abs_le.mpr (h.tsupport_subset (subset_tsupport _ (Function.mem_support.mpr hu')))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `542c3d9fe63913f0463ed0dfba2b70e0485d588a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
