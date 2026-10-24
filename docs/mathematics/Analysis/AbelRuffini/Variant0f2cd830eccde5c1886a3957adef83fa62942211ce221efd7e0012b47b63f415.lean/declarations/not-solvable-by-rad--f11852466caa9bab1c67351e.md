# not_solvable_by_rad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b7d8021-9578-ab67-1542-8b8c398568fd",
  "kind": "theorem",
  "lexical_name": "not_solvable_by_rad",
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
  "slug": "not-solvable-by-rad--f11852466caa9bab1c67351e",
  "source": {
    "blob": "d969be6979f82e496d4c581e845a8493d16463d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 165,
    "path": "GRWTSK/Analysis/AbelRuffini/Variant0f2cd830eccde5c1886a3957adef83fa62942211ce221efd7e0012b47b63f415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f11852466caa9bab1c67351e101c3864202ce83a3c022312b972871f7c3acf5d",
  "verification": {
    "reference": "docs/verification/Analysis/AbelRuffini/Variant0f2cd830eccde5c1886a3957adef83fa62942211ce221efd7e0012b47b63f415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b7d8021-9578-ab67-1542-8b8c398568fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_solvable_by_rad (p : ℕ) (x : ℂ) (hx : aeval x (Φ ℚ a b) = 0) (hab : b < a)
    (hp : p.Prime) (hpa : p ∣ a) (hpb : p ∣ b) (hp2b : ¬p ^ 2 ∣ b) : x ∉ solvableByRad ℚ ℂ := by
  have h_irred := irreducible_Phi a b p hp hpa hpb hp2b
  apply mt (isSolvable_gal_of_irreducible · h_irred hx)
  intro h
  refine Equiv.Perm.not_isSolvable _ (le_of_eq ?_)
    (Group.isSolvable_of_surjective (gal_Phi a b hab h_irred).2)
  rw_mod_cast [Cardinal.mk_fintype, complex_roots_Phi a b h_irred.separable]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AbelRuffini/Variant0f2cd830eccde5c1886a3957adef83fa62942211ce221efd7e0012b47b63f415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AbelRuffini/Variant0f2cd830eccde5c1886a3957adef83fa62942211ce221efd7e0012b47b63f415.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d969be6979f82e496d4c581e845a8493d16463d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
