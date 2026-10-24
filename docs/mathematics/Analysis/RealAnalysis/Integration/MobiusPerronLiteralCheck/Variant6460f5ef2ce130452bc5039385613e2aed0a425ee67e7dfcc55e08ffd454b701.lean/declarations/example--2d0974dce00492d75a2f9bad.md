# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6af7611d4f79098dcc158c8a46a3f4299f884a90af6229b1e6550cfc077e4b83",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--2d0974dce00492d75a2f9bad",
  "source": {
    "blob": "57285338a8e48d13e635158ddd5e72d38ccf42d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d0974dce00492d75a2f9bad21e2aa087654927acf4d94bb1eec7f1d70935ff9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6af7611d4f79098dcc158c8a46a3f4299f884a90af6229b1e6550cfc077e4b83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (c x : ℝ) (n : ℕ) (t : ℝ) :
    perronTerm c x n t = perronIntegrand c x t *
      LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
        (1 + (c : ℂ) + (t : ℂ) * Complex.I) n := rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57285338a8e48d13e635158ddd5e72d38ccf42d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
