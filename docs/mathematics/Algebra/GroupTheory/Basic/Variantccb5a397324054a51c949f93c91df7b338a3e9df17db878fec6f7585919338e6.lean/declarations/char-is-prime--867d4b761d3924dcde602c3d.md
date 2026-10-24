# char_is_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d6bc24d-537e-0e31-01fc-fad3a7375c68",
  "kind": "theorem",
  "lexical_name": "char_is_prime",
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
  "slug": "char-is-prime--867d4b761d3924dcde602c3d",
  "source": {
    "blob": "83d2cb38ccf6954997e9827cf57ddd223152545d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 580,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantccb5a397324054a51c949f93c91df7b338a3e9df17db878fec6f7585919338e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:867d4b761d3924dcde602c3de2cdd92ce094e50f0c1687a2b4acb497a8f689da",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantccb5a397324054a51c949f93c91df7b338a3e9df17db878fec6f7585919338e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d6bc24d-537e-0e31-01fc-fad3a7375c68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem char_is_prime (p : ℕ) [CharP R p] : p.Prime :=
  Or.resolve_right (char_is_prime_or_zero R p) (char_ne_zero_of_finite R p)
#align char_p.char_is_prime CharP.char_is_prime

end Ring

section NonAssocSemiring

variable {R} [NonAssocSemiring R]

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantccb5a397324054a51c949f93c91df7b338a3e9df17db878fec6f7585919338e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantccb5a397324054a51c949f93c91df7b338a3e9df17db878fec6f7585919338e6.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83d2cb38ccf6954997e9827cf57ddd223152545d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
