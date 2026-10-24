# bindOnSupport_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddce0aaa-57e4-0d07-ca1d-6fa79a47ffe9",
  "kind": "theorem",
  "lexical_name": "bindOnSupport_comm",
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
  "slug": "bindonsupport-comm--9fe633c97a4c6bbafd0e1038",
  "source": {
    "blob": "bcd200b2c63f89336c9fed9e6fb7cf9f185ad988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 278,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fe633c97a4c6bbafd0e1038f80b601b197a1b563f300288c57d1495f625d736",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddce0aaa-57e4-0d07-ca1d-6fa79a47ffe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bindOnSupport_comm (p : PMF α) (q : PMF β) (f : ∀ a ∈ p.support, ∀ b ∈ q.support, PMF γ) :
    (p.bindOnSupport fun a ha => q.bindOnSupport (f a ha)) =
      q.bindOnSupport fun b hb => p.bindOnSupport fun a ha => f a ha b hb := by
  apply PMF.ext; rintro c
  simp only [ENNReal.coe_inj.symm, bindOnSupport_apply, ← tsum_dite_right,
    ENNReal.tsum_mul_left.symm, ENNReal.tsum_mul_right.symm]
  refine _root_.trans ENNReal.tsum_comm (tsum_congr fun b => tsum_congr fun a => ?_)
  split_ifs with h1 h2 h2 <;> ring

section Measure

variable (s : Set β)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcd200b2c63f89336c9fed9e6fb7cf9f185ad988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
