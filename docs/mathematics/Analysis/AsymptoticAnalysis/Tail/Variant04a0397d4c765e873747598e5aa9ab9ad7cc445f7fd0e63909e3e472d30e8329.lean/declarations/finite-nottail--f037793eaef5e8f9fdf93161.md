# finite_notTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3bd5b47-2cdb-2d1e-87cd-da7bccf27234",
  "kind": "lemma",
  "lexical_name": "finite_notTail",
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
  "slug": "finite-nottail--f037793eaef5e8f9fdf93161",
  "source": {
    "blob": "aeeed052f300b43537382b09eeef04f0a8dcb49a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 293,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f037793eaef5e8f9fdf9316186240d16c8ae5dd177f520a3781ee3d8f1e93250",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3bd5b47-2cdb-2d1e-87cd-da7bccf27234`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_notTail (Z : ZeroConfig) (T : ℝ) :
    {ρ : Z.carrier | ¬ InTail T (ρ : ℂ).im}.Finite := by
  have hfin : (Z.ZIprime T).Finite := Z.finite_window _ _
  refine (hfin.preimage Subtype.val_injective.injOn).subset ?_
  intro ρ hρ
  simp only [Set.mem_ofPred_eq, InTail, not_or, not_le, not_lt] at hρ
  exact ⟨ρ.2, hρ.1, hρ.2⟩

namespace TailHyp

variable (H : TailHyp Z P T A₀ C₁)
include H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeeed052f300b43537382b09eeef04f0a8dcb49a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
