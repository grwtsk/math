# no_normal_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7486736f-cadc-4c10-c04a-610ab60f5cbb",
  "kind": "theorem",
  "lexical_name": "no_normal_proof",
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
  "slug": "no-normal-proof--39506aa5f67ffab408b7fcd4",
  "source": {
    "blob": "0d0549c047940f4f2a4f84c5df3e53c54f8cf0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1384,
    "line": 1357,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39506aa5f67ffab408b7fcd4970a53484355edfe29b9b492524334d83fab2883",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7486736f-cadc-4c10-c04a-610ab60f5cbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1357–1384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_normal_proof {S : Type u} {P : Specification S}
    {Γ : List (Expr S)} {γ : Nat → Mode} {M T : Expr S}
    (hΓ : ProofContext Γ γ) (hT : T.Target) (h : HasType P Γ M T)
    (hm : WellModed γ M .proof) (hn : PureTypeSystem.Normal M.erase) : False := by
  induction M using (measure Expr.weight).wf.induction generalizing Γ γ T with
  | h M ih =>
      obtain ⟨l, A, b, rfl⟩ | hneutral := hm.normal_proof_shape hn
      · obtain ⟨B, s, hb, hPi, hc⟩ := h.generation_lam
        obtain ⟨hl, _, hmb⟩ := hm.lam_inv
        obtain ⟨rfl, D, E, rfl, hE, hAD, hBE⟩ := hT.product hl (.symm _ _ hc)
        obtain ⟨r, hTsort⟩ := h.abstraction_type_sorted
        obtain ⟨_, _, _, hD, hEopen, _, _⟩ := hTsort.generation_pi
        obtain ⟨_, hA⟩ := hPi.product_domain _ _ _ rfl
        have hEsort := hEopen.context_head_conversion hD hA (.symm _ _ hAD)
        have hbody := HasType.conversion hb hEsort hBE
        exact ih b (by change b.weight < 1 + A.weight + b.weight; omega)
          (hΓ.data_cons A) hE hbody hmb hn.lam_body
      · obtain ⟨n, rfl⟩ | ⟨Q, R, hQ, hR, hQR, hmode, hnorm⟩ :=
          hneutral.first_target h hm hn hΓ
        · obtain ⟨A, hlookup, hc⟩ := h.generation
          obtain ⟨R, F, rfl, _⟩ := hΓ n A hlookup hm.var_inv
          have hl := (hT.product rfl (.symm _ _ hc)).1
          cases hl
        · exact ih Q hQ hΓ hR hQR hmode hnorm

/-- A system-wide WN PTS has no proof-mode inhabitant of these targets in
these converter contexts. All later encodings must supply a genuine typing
and mode derivation to invoke this obstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean#L1357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0549c047940f4f2a4f84c5df3e53c54f8cf0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
