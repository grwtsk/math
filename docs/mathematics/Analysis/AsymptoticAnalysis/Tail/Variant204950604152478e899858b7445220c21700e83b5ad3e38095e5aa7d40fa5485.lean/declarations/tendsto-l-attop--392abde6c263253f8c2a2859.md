# tendsto_L_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f950259b-24d0-b289-13b0-679c4fa175e5",
  "kind": "lemma",
  "lexical_name": "tendsto_L_atTop",
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
  "slug": "tendsto-l-attop--392abde6c263253f8c2a2859",
  "source": {
    "blob": "2b4f18d0facc79b76677a7ad506b0a698a7fc21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 649,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:392abde6c263253f8c2a2859092dfcb463324367d331861fcb43551457da2889",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f950259b-24d0-b289-13b0-679c4fa175e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_L_atTop (P : Params) (hP : P.Valid) : Tendsto (fun T => P.L T) atTop atTop := by
  unfold Params.L l
  apply Tendsto.const_mul_atTop hP.lam_pos
  exact Real.tendsto_log_atTop.comp (tendsto_id.atTop_div_const (by positivity))

/-- **[prop:tail], eventually-in-T form** for thmA_abstract: given the local
count (PaperInputs.RvM.local) and, eventually in T, [eq:hfbound] for φ with constant C₁(T)
(= ‖φ″‖₁, T-independent in value but a T-dependent Lean term), a > 0 and conj φ̂(z̄) = φ̂(z)
(all three from Taper.lean), TailInputs holds eventually with
θ₀(T) = theta0 A₀ (e^{L/4} C₁(T)) T = 4A₀C₁²X^{1/2}log(4T)/T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b4f18d0facc79b76677a7ad506b0a698a7fc21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
