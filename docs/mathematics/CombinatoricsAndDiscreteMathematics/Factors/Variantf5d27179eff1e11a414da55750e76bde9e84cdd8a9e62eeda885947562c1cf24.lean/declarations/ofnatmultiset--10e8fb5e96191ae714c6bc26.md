# ofNatMultiset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0cbea4613f967769024c4ac1955806e3ab71d05b8ddfdfdf20ff290fb16382b",
  "kind": "def",
  "lexical_name": "ofNatMultiset",
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
  "slug": "ofnatmultiset--10e8fb5e96191ae714c6bc26",
  "source": {
    "blob": "4f48fca6d29e72e80349cba89bc65f1854c6c0de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10e8fb5e96191ae714c6bc261cb8e4e34281f1edfb659f6e34ab73ab3f49877a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0cbea4613f967769024c4ac1955806e3ab71d05b8ddfdfdf20ff290fb16382b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofNatMultiset (v : Multiset ℕ) (h : ∀ p : ℕ, p ∈ v → p.Prime) : PrimeMultiset :=
  @Multiset.pmap ℕ Nat.Primes Nat.Prime (fun p hp => ⟨p, hp⟩) v h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f48fca6d29e72e80349cba89bc65f1854c6c0de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
