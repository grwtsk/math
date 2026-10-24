# MulEquiv.irreducible_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a7af39737eea6b023175ee1fd6532071cf2e888",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a27340336d2801aaf8c5aa1864207d3f618d9db956e2bd0b4afd9a68fd592d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18d269ab-babe-d8b8-3f58-1a378d56e9ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:278bda4d-b85e-561d-ca08-fa822350d79a",
  "kind": "lemma",
  "lexical_name": "MulEquiv.irreducible_iff",
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
  "slug": "mulequiv-irreducible-iff--5a494e387916f7021967c33b",
  "source": {
    "blob": "9a7af39737eea6b023175ee1fd6532071cf2e888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant9a27340336d2801aaf8c5aa1864207d3f618d9db956e2bd0b4afd9a68fd592d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a494e387916f7021967c33be8b93cf34bbef7ad6b61a77d99f3df3a668d38bf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant9a27340336d2801aaf8c5aa1864207d3f618d9db956e2bd0b4afd9a68fd592d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:278bda4d-b85e-561d-ca08-fa822350d79a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MulEquiv.irreducible_iff : Irreducible (f x) ↔ Irreducible x := by
  simp [_root_.irreducible_iff, (EquivLike.surjective f).forall, ← map_mul, -isUnit_map_iff]

/-- Irreducibility is preserved by multiplicative equivalences.

Note that surjective + local hom is not enough. Consider the additive monoids `M = ℕ ⊕ ℕ`, `N = ℕ`,
with x surjective local (additive) hom `f : M →+ N` sending `(m, n)` to `2m + n`.
It is local because the only add unit in `N` is `0`, with preimage `{(0, 0)}` also an add unit.
Then `x = (1, 0)` is irreducible in `M`, but `f x = 2 = 1 + 1` is not irreducible in `N`. -/
@[to_additive "Irreducibility is preserved by additive equivalences."]
alias ⟨_, Irreducible.map⟩ := MulEquiv.irreducible_iff

end MulEquivClass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant9a27340336d2801aaf8c5aa1864207d3f618d9db956e2bd0b4afd9a68fd592d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant9a27340336d2801aaf8c5aa1864207d3f618d9db956e2bd0b4afd9a68fd592d5.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a7af39737eea6b023175ee1fd6532071cf2e888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
