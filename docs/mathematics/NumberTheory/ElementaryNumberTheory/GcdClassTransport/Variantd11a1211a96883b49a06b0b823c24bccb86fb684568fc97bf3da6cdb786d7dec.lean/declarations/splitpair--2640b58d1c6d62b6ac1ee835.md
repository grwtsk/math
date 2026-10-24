# splitPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b07ec038bcb3e2672be5a1585812ea316d0894f7aaff4ed6bae73a4465dbeeb3",
  "kind": "def",
  "lexical_name": "splitPair",
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
  "slug": "splitpair--2640b58d1c6d62b6ac1ee835",
  "source": {
    "blob": "34d4f4f159ea1e60c3206c2f8dd6850030546af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 19,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2640b58d1c6d62b6ac1ee83509323014c0211f675acf22786babc2bc7b6da88b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b07ec038bcb3e2672be5a1585812ea316d0894f7aaff4ed6bae73a4465dbeeb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitPair (p : ℕ × ℕ) : Σ _ : ℕ × ℕ, ℕ :=
  ⟨(p.1 / Nat.gcd p.1 p.2, p.2 / Nat.gcd p.1 p.2), Nat.gcd p.1 p.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34d4f4f159ea1e60c3206c2f8dd6850030546af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
