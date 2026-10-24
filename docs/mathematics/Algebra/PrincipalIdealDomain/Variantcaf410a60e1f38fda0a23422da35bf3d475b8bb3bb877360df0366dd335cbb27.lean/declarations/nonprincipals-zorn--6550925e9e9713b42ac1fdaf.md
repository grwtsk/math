# nonPrincipals_zorn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac5a1ae0-26a2-d3b8-d3ff-b941201c3e2d",
  "kind": "theorem",
  "lexical_name": "nonPrincipals_zorn",
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
  "slug": "nonprincipals-zorn--6550925e9e9713b42ac1fdaf",
  "source": {
    "blob": "88e611fe03c393d5a12418594d8eb1dc243c0b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 538,
    "path": "GRWTSK/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6550925e9e9713b42ac1fdaf4bda1196b13a6c1960ab000b5d376472ca0e06c1",
  "verification": {
    "reference": "docs/verification/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac5a1ae0-26a2-d3b8-d3ff-b941201c3e2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonPrincipals_zorn (hR : ¬IsPrincipalIdealRing R) (c : Set (Ideal R))
    (hs : c ⊆ nonPrincipals R) (hchain : IsChain (· ≤ ·) c) :
    ∃ I ∈ nonPrincipals R, ∀ J ∈ c, J ≤ I := by
  by_cases H : c.Nonempty
  · obtain ⟨K, hKmem⟩ := Set.nonempty_def.1 H
    refine ⟨sSup c, fun ⟨x, hx⟩ ↦ ?_, fun _ ↦ le_sSup⟩
    have hxmem : x ∈ sSup c := hx.symm ▸ Submodule.mem_span_singleton_self x
    obtain ⟨J, hJc, hxJ⟩ := (Submodule.mem_sSup_of_directed ⟨K, hKmem⟩ hchain.directedOn).1 hxmem
    have hsSupJ : sSup c = J := le_antisymm (by simp [hx, Ideal.span_le, hxJ]) (le_sSup hJc)
    exact hs hJc ⟨hsSupJ ▸ ⟨x, hx⟩⟩
  · simpa [Set.not_nonempty_iff_eq_empty.1 H, isPrincipalIdealRing_iff] using hR

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88e611fe03c393d5a12418594d8eb1dc243c0b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
