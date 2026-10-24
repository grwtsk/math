# Alon.P

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d054024bfd9b8a19f7ab81498ef7b79ec3ff7a5bfee36c3c67e4a9068a9e0512",
  "kind": "def",
  "lexical_name": "Alon.P",
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
  "slug": "alon-p--7bfcd3cbdaf93d4bae5fff1e",
  "source": {
    "blob": "dc70f3e92ea646dda9adf1fcb8dbfc96c8e6951e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bfcd3cbdaf93d4bae5fff1ee752c4719bfe1b8b854d99bfdebaf51ecc07b4b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d054024bfd9b8a19f7ab81498ef7b79ec3ff7a5bfee36c3c67e4a9068a9e0512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def Alon.P (S : Finset R) (i : σ) : MvPolynomial σ R :=
  ∏ r ∈ S, (X i - C r)

/-- The degree of `Alon.P S i` with respect to `X i` is the cardinality of `S`,
  and `0` otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc70f3e92ea646dda9adf1fcb8dbfc96c8e6951e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
