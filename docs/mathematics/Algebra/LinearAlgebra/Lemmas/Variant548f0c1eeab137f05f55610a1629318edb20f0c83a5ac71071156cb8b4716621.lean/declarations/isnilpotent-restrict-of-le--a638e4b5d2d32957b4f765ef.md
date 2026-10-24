# isNilpotent_restrict_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53eecd06-6f97-5e5b-6c4f-4fc3b1887640",
  "kind": "lemma",
  "lexical_name": "isNilpotent_restrict_of_le",
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
  "slug": "isnilpotent-restrict-of-le--a638e4b5d2d32957b4f765ef",
  "source": {
    "blob": "4321f4dc9829dcf0bab933761c83f55eb218fec1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a638e4b5d2d32957b4f765ef8a8c38ad2574e2e61194ae44dea0f6aaedc14875",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53eecd06-6f97-5e5b-6c4f-4fc3b1887640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_restrict_of_le {f : End R M} {p q : Submodule R M}
    {hp : MapsTo f p p} {hq : MapsTo f q q} (h : p ≤ q) (hf : IsNilpotent (f.restrict hq)) :
    IsNilpotent (f.restrict hp) := by
  obtain ⟨n, hn⟩ := hf
  use n
  ext ⟨x, hx⟩
  replace hn := DFunLike.congr_fun hn ⟨x, h hx⟩
  simp_rw [LinearMap.zero_apply, ZeroMemClass.coe_zero, ZeroMemClass.coe_eq_zero] at hn ⊢
  rw [Module.End.pow_restrict, LinearMap.restrict_apply] at hn ⊢
  ext
  exact (congr_arg Subtype.val hn :)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4321f4dc9829dcf0bab933761c83f55eb218fec1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
