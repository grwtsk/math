# boundary_quotient_simple_draft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47e17380-0810-9ef1-c4a9-f563626a4777",
  "kind": "theorem",
  "lexical_name": "boundary_quotient_simple_draft",
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
  "slug": "boundary-quotient-simple-draft--6363288af30486593a446ff3",
  "source": {
    "blob": "10048b6982a9a9d54b4ff758d2ea2bb7fa3c33c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variantee54b34b449c8c83ef13dec62aa809a93e02dbd34f20f14fdda579bc9c717278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6363288af30486593a446ff3333676c759eedc1c01f5623f9c11d655b2e20b2a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variantee54b34b449c8c83ef13dec62aa809a93e02dbd34f20f14fdda579bc9c717278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47e17380-0810-9ef1-c4a9-f563626a4777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_quotient_simple_draft {f : ℂ → ℂ} {z₀ : ℂ} {m : ℕ}
    (hf : AnalyticAt ℂ f z₀) (hm : 0 < m) (horder : analyticOrderAt f z₀ = m) :
    AnalyticAt ℂ (fun w ↦ f w / (f w + deriv f w)) z₀ ∧
      analyticOrderAt (fun w ↦ f w / (f w + deriv f w)) z₀ = 1 := by
  obtain ⟨n, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hm)
  exact boundary_quotient_of_succ_order_draft n hf horder

-- UNCOMPILED exact fixtures, to be moved into the focused test module only
-- after this draft compiles without admissions.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variantee54b34b449c8c83ef13dec62aa809a93e02dbd34f20f14fdda579bc9c717278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variantee54b34b449c8c83ef13dec62aa809a93e02dbd34f20f14fdda579bc9c717278.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10048b6982a9a9d54b4ff758d2ea2bb7fa3c33c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
