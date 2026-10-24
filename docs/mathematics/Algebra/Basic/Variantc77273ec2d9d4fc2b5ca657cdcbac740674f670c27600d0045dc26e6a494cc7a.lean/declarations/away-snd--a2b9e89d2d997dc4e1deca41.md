# away_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa47ba04aba9943a209450c00ebbf850eb986b8f1915ba928e768cb382010f5c",
  "kind": "instance",
  "lexical_name": "away_snd",
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
  "slug": "away-snd--a2b9e89d2d997dc4e1deca41",
  "source": {
    "blob": "8ac0114b1e03d40f266eb5373f388d9ba55d7559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 436,
    "path": "GRWTSK/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2b9e89d2d997dc4e1deca4190aa67c98b9af999e5b3e40d7f308c32e220d156",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa47ba04aba9943a209450c00ebbf850eb986b8f1915ba928e768cb382010f5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance away_snd {R S} [CommSemiring R] [CommSemiring S] :
    letI := (RingHom.snd R S).toAlgebra
    IsLocalization.Away (R := R × S) (0, 1) S :=
  letI := (RingHom.snd R S).toAlgebra
  away_of_isIdempotentElem_of_mul (by ext <;> simp)
    (fun ⟨xR, xS⟩ ⟨yR, yS⟩ ↦ show xS = yS ↔ _ by simp) Prod.snd_surjective

end Prod

section

variable {S T : Type*} [CommRing S] [CommRing T] [Algebra S T]

open scoped Pointwise in
/-- Suppose `I` is an ideal of `R`, then `R / I` is the localization away from `r : R`
if `r - 1 ∈ I` and for some `n`, `r ^ n • I = ⊥`.
For sake of usability, we state this for surjective ring maps instead of ideals.
For a version with two ideals, see `Away.of_sub_one_mem_ker'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ac0114b1e03d40f266eb5373f388d9ba55d7559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
