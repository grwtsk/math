# productFiberSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97efc27705ab6f7f8994b194595dcc04452f2214858549bf5848ada1117b0752",
  "kind": "def",
  "lexical_name": "productFiberSum",
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
  "slug": "productfibersum--9b7050db459b9cda2dbb2e49",
  "source": {
    "blob": "a3fadeb44f84271d94dbefc61af6a2c3703452b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b7050db459b9cda2dbb2e49af1ecaa76045a230eefe665dcd61bcf47ef2fe46",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97efc27705ab6f7f8994b194595dcc04452f2214858549bf5848ada1117b0752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def productFiberSum
    (F : Nat → Nat → Complex)
    (n : Nat) : Complex :=
  ∑ d ∈ Nat.divisors n, F d (n / d)

/--
Finite divisor-fiber identity for positive factor pairs.

This is the finite reindexing skeleton behind Dirichlet convolution: summing
over divisors `d | n` is the same as summing over positive pairs `(d, n / d)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3fadeb44f84271d94dbefc61af6a2c3703452b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
