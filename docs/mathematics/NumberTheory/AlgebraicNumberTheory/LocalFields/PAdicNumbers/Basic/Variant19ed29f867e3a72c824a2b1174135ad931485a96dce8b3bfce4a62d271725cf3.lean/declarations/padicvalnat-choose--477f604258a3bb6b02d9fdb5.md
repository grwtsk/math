# padicValNat_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2af7cd15-d5d7-2e46-7662-85957cd3a30d",
  "kind": "theorem",
  "lexical_name": "padicValNat_choose",
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
  "slug": "padicvalnat-choose--477f604258a3bb6b02d9fdb5",
  "source": {
    "blob": "873466b39d96b9ccb46f350e75882ead92d13b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 666,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:477f604258a3bb6b02d9fdb54cddccd1cfb27a0eae948c2bc77f88ef32a23650",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2af7cd15-d5d7-2e46-7662-85957cd3a30d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem padicValNat_choose {n k b : ℕ} [hp : Fact p.Prime] (hkn : k ≤ n) (hnb : log p n < b) :
    padicValNat p (choose n k) = #{i ∈ Finset.Ico 1 b | p ^ i ≤ k % p ^ i + (n - k) % p ^ i} := by
  exact_mod_cast (padicValNat_eq_emultiplicity (p := p) <| (choose_ne_zero hkn)) ▸
    Prime.emultiplicity_choose hp.out hkn hnb

/-- **Kummer's Theorem**

The `p`-adic valuation of `(n + k).choose k` is the number of carries when `k` and `n` are added
in base `p`. This sum is expressed over the finset `Ico 1 b` where `b` is any bound greater than
`log p (n + k)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `873466b39d96b9ccb46f350e75882ead92d13b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
