# completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8da6a42dd000c22823f23eba8e46a97f1c910df3056180dfac4a491ca808d955",
  "kind": "instance",
  "lexical_name": "completeLattice",
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
  "slug": "completelattice--5e35fc7e7d066bc98947d48d",
  "source": {
    "blob": "0217ab7f126a7bb3e7f7675a05b56734beb0562f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 610,
    "path": "GRWTSK/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e35fc7e7d066bc98947d48d03099b79c6a89081ea9fa16bcccdc93c085740c9",
  "verification": {
    "reference": "docs/verification/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8da6a42dd000c22823f23eba8e46a97f1c910df3056180dfac4a491ca808d955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance completeLattice : CompleteLattice (StarSubalgebra R A) :=
  GaloisInsertion.liftCompleteLattice StarSubalgebra.gi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0217ab7f126a7bb3e7f7675a05b56734beb0562f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
