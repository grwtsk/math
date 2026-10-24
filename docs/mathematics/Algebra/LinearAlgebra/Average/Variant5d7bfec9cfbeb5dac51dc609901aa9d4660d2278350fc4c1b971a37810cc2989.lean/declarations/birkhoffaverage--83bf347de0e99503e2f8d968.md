# birkhoffAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a992ae1e71f5610ef2df98bd60246a6441c36227248090e3fde1ac11e82bcf8d",
  "kind": "def",
  "lexical_name": "birkhoffAverage",
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
  "slug": "birkhoffaverage--83bf347de0e99503e2f8d968",
  "source": {
    "blob": "c708e42d90500eeeae993f3b7d883d1d817e0adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/Average/Variant5d7bfec9cfbeb5dac51dc609901aa9d4660d2278350fc4c1b971a37810cc2989.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83bf347de0e99503e2f8d9688a566c6466f79f3558f1500790c875f6e997957c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Average/Variant5d7bfec9cfbeb5dac51dc609901aa9d4660d2278350fc4c1b971a37810cc2989.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a992ae1e71f5610ef2df98bd60246a6441c36227248090e3fde1ac11e82bcf8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def birkhoffAverage (f : α → α) (g : α → M) (n : ℕ) (x : α) : M := (n : R)⁻¹ • birkhoffSum f g n x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Average/Variant5d7bfec9cfbeb5dac51dc609901aa9d4660d2278350fc4c1b971a37810cc2989.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Average/Variant5d7bfec9cfbeb5dac51dc609901aa9d4660d2278350fc4c1b971a37810cc2989.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c708e42d90500eeeae993f3b7d883d1d817e0adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
