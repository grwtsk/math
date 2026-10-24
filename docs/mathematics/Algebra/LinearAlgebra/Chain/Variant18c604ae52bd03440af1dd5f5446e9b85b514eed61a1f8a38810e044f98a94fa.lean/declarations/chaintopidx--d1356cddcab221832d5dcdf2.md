# chainTopIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c19c663062ac970e9d991f358bed0700458a6419e2f6f0da30ab313f2e4c272",
  "kind": "def",
  "lexical_name": "chainTopIdx",
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
  "slug": "chaintopidx--d1356cddcab221832d5dcdf2",
  "source": {
    "blob": "5aebdfdd479dbc358d7ef9544e1fc063fcb66ceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 274,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1356cddcab221832d5dcdf27ea7acbdcfff7d36e2630e3ebadd03728d84ebb8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c19c663062ac970e9d991f358bed0700458a6419e2f6f0da30ab313f2e4c272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chainTopIdx : ι :=
  if h : LinearIndependent R ![P.root i, P.root j]
    then (P.root_add_nsmul_mem_range_iff_le_chainTopCoeff h).mpr
      (le_refl <| P.chainTopCoeff i j) |>.choose
    else j

open scoped Classical in
/-- If `α = P.root i` and `β = P.root j` are linearly independent, this is the index of the root
`β - q • α` where `β - q • α, ..., β - α, β, β + α, ..., β + p • α` is the `α`-chain through `β`.

In the absence of linear independence, it takes a junk value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5aebdfdd479dbc358d7ef9544e1fc063fcb66ceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
