# deriv2_phi_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a89a8277-1195-852d-f522-bd8135450ffb",
  "kind": "lemma",
  "lexical_name": "deriv2_phi_pos",
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
  "slug": "deriv2-phi-pos--3e54537058ed3e2aa45b2e2d",
  "source": {
    "blob": "7392f1f6f96b918508d0a01f898f76d8012a9b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 266,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e54537058ed3e2aa45b2e2d7fd1f6664b2f50bcc32edeab65ed4e226f15101d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a89a8277-1195-852d-f522-bd8135450ffb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma deriv2_phi_pos (hϱ : TaperProfile ϱ) (hw : 0 < w) {u : ℝ} (hu : 0 < u) :
    deriv (deriv (phi ϱ L w)) u = deriv (deriv ϱ) ((L / 2 - u) / w) / w ^ 2 := by
  have hev : deriv (phi ϱ L w) =ᶠ[nhds u] (fun v => -(deriv ϱ ((L / 2 - v) / w) / w)) := by
    filter_upwards [isOpen_Ioi.mem_nhds hu] with v hv
    exact deriv_phi_pos hϱ hw hv
  rw [hev.deriv_eq]
  have hg : HasDerivAt (fun v : ℝ => (L / 2 - v) / w) (-1 / w) u := by
    have h1 : HasDerivAt (fun v : ℝ => L / 2 - v) (-1) u := (hasDerivAt_id u).const_sub (L / 2)
    exact h1.div_const w
  have hd2 : HasDerivAt (deriv ϱ) (deriv (deriv ϱ) ((L / 2 - u) / w)) ((L / 2 - u) / w) :=
    ((hϱ.contDiff.deriv' (n := 2)).differentiable (by norm_num) _).hasDerivAt
  have hcomp0 : HasDerivAt ((deriv ϱ) ∘ fun v : ℝ => (L / 2 - v) / w)
      (deriv (deriv ϱ) ((L / 2 - u) / w) * (-1 / w)) u := hd2.comp u hg
  have hcomp : HasDerivAt (fun v : ℝ => deriv ϱ ((L / 2 - v) / w))
      (deriv (deriv ϱ) ((L / 2 - u) / w) * (-1 / w)) u := hcomp0
  have hneg : HasDerivAt (fun v : ℝ => -(deriv ϱ ((L / 2 - v) / w) / w))
      (-(deriv (deriv ϱ) ((L / 2 - u) / w) * (-1 / w) / w)) u := (hcomp.div_const w).neg
  rw [hneg.deriv]
  field_simp

/-- Even-integrand reduction: ∫ℝ |G| = 2∫₀^{L/2} |G| for |G| even, G = 0 off [−L/2, L/2]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7392f1f6f96b918508d0a01f898f76d8012a9b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
