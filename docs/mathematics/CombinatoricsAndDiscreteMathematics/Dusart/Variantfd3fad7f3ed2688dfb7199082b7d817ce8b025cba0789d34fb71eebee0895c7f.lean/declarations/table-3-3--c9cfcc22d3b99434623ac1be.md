# Table_3_3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d46fda166e00f405e46219352fad2fda7fe986101ba8df2db8cb8014c9d75ceb",
  "kind": "def",
  "lexical_name": "Table_3_3",
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
  "slug": "table-3-3--c9cfcc22d3b99434623ac1be",
  "source": {
    "blob": "b4d176ef04c86581c0693188cbf24d0c2c3308ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9cfcc22d3b99434623ac1befeaf4a3e61f75fa03ca002983b52d6d91e60e612",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d46fda166e00f405e46219352fad2fda7fe986101ba8df2db8cb8014c9d75ceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Table_3_3 : List (ℕ × ℝ) := [
   (0, 0.77),
   (1, 0.85),
   (2, 1.66),
   (3, 8.16),
   (4, 59.18)
]

@[blueprint "Dusart_thm_3_3"
  (title := "Dusart Theorem 3.3")
  (statement := /--
  We have $|\psi(x) - x| < \eta_k x / \log^k x$ for $x \geq 2$ with $(k,\eta)$ given by the table in \cite[Theorem 3.3]{Dusart2018}.-/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d176ef04c86581c0693188cbf24d0c2c3308ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
