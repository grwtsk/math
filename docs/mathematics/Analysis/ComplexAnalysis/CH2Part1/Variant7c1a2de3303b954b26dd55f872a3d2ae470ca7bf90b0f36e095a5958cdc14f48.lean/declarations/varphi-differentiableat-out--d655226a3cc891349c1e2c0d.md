# varphi_differentiableAt_out

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:685857e9-f80f-14b3-a2ca-4b8e9a16444a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d216310-860c-0888-b3fc-3ed3d4cdf881",
  "kind": "lemma",
  "lexical_name": "varphi_differentiableAt_out",
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
  "slug": "varphi-differentiableat-out--d655226a3cc891349c1e2c0d",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2178,
    "line": 2158,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d655226a3cc891349c1e2c0dde96c7ce6c150115bc0295e4878c46690920ba4c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d216310-860c-0888-b3fc-3ed3d4cdf881`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2158–2178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma varphi_differentiableAt_out (ν ε : ℝ) {x : ℝ} (hx : x ∈ (Set.Icc (-1 : ℝ) 1)ᶜ) :
    DifferentiableAt ℝ (ϕ_pm ν ε) x := by
  have h_zero : ϕ_pm ν ε =ᶠ[nhds x] 0 := by
    filter_upwards [isClosed_Icc.isOpen_compl.mem_nhds hx] with y hy
    unfold ϕ_pm; exact if_neg hy
  exact Filter.EventuallyEq.differentiableAt_iff h_zero |>.mpr (differentiableAt_const 0)

@[blueprint
  "phi-cts"
  (title := "$\\varphi$ is continuous")
  (statement := /--
  $\varphi$ is continuous on $[0,1]$.
  -/)
  (proof := /-- By the preceding lemmas it suffices to verify continuity at $0, -1, 1$.  Continuity at $0$ is clear.  For $t = -1, 1$, by $\coth \frac{w(t)}{2} = \coth \frac{\nu}{2}$, we see that $B^{\pm}(w(t)) = \left(\frac{\nu}{2} - \pi i t\right)\left(\coth \frac{\nu}{2} \pm 1\right)$, and so
\[
\Phi^{\pm,\star}_{\nu}(t) = -t \cdot \frac{1}{2}\left(\coth \frac{\nu}{2} \pm 1\right) = -t\, \Phi^{\pm,\circ}_{\nu}(t);
\]
hence, by Definition \ref{phi-pm-def}, $\varphi^{\pm}_{\nu}(t) = 0$. Thus, $\varphi^{\pm}_{\nu}$ is continuous at $-1$ and at $1$.
 -/)
  (latexEnv := "lemma")
  (discussion := 1075)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L2158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
