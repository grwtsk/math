# ofBijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85334051c7d443f39d1912e3ebab867e08f87cea00971d0c107c1678ab4fc792",
  "kind": "def",
  "lexical_name": "ofBijective",
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
  "slug": "ofbijective--e1ff622019470e4b905a2c60",
  "source": {
    "blob": "4bdcaa7213a5dd1d1370e54fe6ab536d35935bd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 636,
    "line": 631,
    "path": "GRWTSK/Algebra/LinearAlgebra/Intertwining/Variant997ee38bc89fbc0e2462c76b479d8e098edef8af68cb57619d34923edb94bfb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1ff622019470e4b905a2c60c5da5bb40f7cf37493a0cc2edc9ac27b2262f8c7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Intertwining/Variant997ee38bc89fbc0e2462c76b479d8e098edef8af68cb57619d34923edb94bfb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85334051c7d443f39d1912e3ebab867e08f87cea00971d0c107c1678ab4fc792`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–636.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofBijective (f : IntertwiningMap ρ σ) (hf : Function.Bijective f) :
    Equiv ρ σ where
  isIntertwining' := f.isIntertwining'
  toLinearEquiv := LinearEquiv.ofBijective f.toLinearMap hf

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Intertwining/Variant997ee38bc89fbc0e2462c76b479d8e098edef8af68cb57619d34923edb94bfb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Intertwining/Variant997ee38bc89fbc0e2462c76b479d8e098edef8af68cb57619d34923edb94bfb7.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bdcaa7213a5dd1d1370e54fe6ab536d35935bd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
