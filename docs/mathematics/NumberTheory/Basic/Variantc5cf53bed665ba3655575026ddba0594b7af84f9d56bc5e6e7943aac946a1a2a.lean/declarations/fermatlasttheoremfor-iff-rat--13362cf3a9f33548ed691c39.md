# fermatLastTheoremFor_iff_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d63cf09e4eb2025afc11612d679ad45f2e42854c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20ba4c5e-88e5-856f-5dd5-97f7d2f88b42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06728165-00d8-4c24-bfbb-616a049a4a72",
  "kind": "lemma",
  "lexical_name": "fermatLastTheoremFor_iff_rat",
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
  "slug": "fermatlasttheoremfor-iff-rat--13362cf3a9f33548ed691c39",
  "source": {
    "blob": "d63cf09e4eb2025afc11612d679ad45f2e42854c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 151,
    "path": "GRWTSK/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13362cf3a9f33548ed691c39ff01bb7510408e5ff9004274a0d17de201b245ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06728165-00d8-4c24-bfbb-616a049a4a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fermatLastTheoremFor_iff_rat {n : ℕ} : FermatLastTheoremFor n ↔ FermatLastTheoremWith ℚ n :=
  (fermatLastTheoremWith_nat_int_rat_tfae n).out 1 3

/--
A relaxed variant of Fermat's Last Theorem over a given commutative semiring with a specific
exponent, allowing nonzero solutions of units and their common multiples.

1. The variant `FermatLastTheoremWith' R` is weaker than `FermatLastTheoremWith R` in general.
   In particular, it holds trivially for `[Field R]`.
2. This variant is equivalent to the original `FermatLastTheoremWith R` for `R = ℕ` or `ℤ`.
   In general, they are equivalent if there is no solutions of units to the Fermat equation.
3. For a polynomial ring `R = k[X]`, the original `FermatLastTheoremWith R` is false but the weaker
   variant `FermatLastTheoremWith' R` is true. This polynomial variant of Fermat's Last Theorem
   can be shown elementarily using Mason--Stothers theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d63cf09e4eb2025afc11612d679ad45f2e42854c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
