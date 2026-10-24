# trivial_H1_does_not_preserve_bijectivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f888345-2a05-7794-e90a-c0ee79668d97",
  "kind": "theorem",
  "lexical_name": "trivial_H1_does_not_preserve_bijectivity",
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
  "slug": "trivial-h1-does-not-preserve-bijectivity--44fdb607b0a80a79d5d6c40e",
  "source": {
    "blob": "a06f25b10cce3c8305f6bd655dc7457000874341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 505,
    "path": "GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44fdb607b0a80a79d5d6c40e55f5d300a2efea86bfd99705cc9cde6fdfa132de",
  "verification": {
    "reference": "docs/verification/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f888345-2a05-7794-e90a-c0ee79668d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivial_H1_does_not_preserve_bijectivity {n : Nat} (hn : 0 < n) :
    (endMapComplex n).H1Trivial ∧
    (endMapComplex n).Closed₁ (id : EndMap n) ∧
    (endMapComplex n).Exact₁ (id : EndMap n) ∧
    Function.Bijective (id : EndMap n) ∧
    ¬ Function.Injective
        (addCorrection
          (id : EndMap n)
          (id : EndMap n)) := by
  exact ⟨identityZeroComplex_h1Trivial _ _,
    identityCorrection_closed n,
    identityCorrection_exact n,
    Function.bijective_id,
    identity_add_identity_not_injective hn⟩

/-! ## Square-zero endomorphisms -/

/-- A zero-preserving square-zero map on a nontrivial type cannot be injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a06f25b10cce3c8305f6bd655dc7457000874341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
