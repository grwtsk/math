# negToCNF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb29b03fd98f270da2c27b0e125d5851f3ea42f02bc45301779fe40cb90b826a",
  "kind": "def",
  "lexical_name": "negToCNF",
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
  "slug": "negtocnf--4e9d1f25a2c806a2908dfbd8",
  "source": {
    "blob": "3e7f0474cdb9cd11bf64cc7e8fe3e134524f6b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 245,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e9d1f25a2c806a2908dfbd8495e6bd9c7fe3bb7c531b1f3748cc112c3c68229",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb29b03fd98f270da2c27b0e125d5851f3ea42f02bc45301779fe40cb90b826a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def negToCNF : Formula α → Formula.CNF α
  | .var a => CNF.literal (.neg a)
  | .falsum => CNF.truth
  | .truth => CNF.falsum
  | .neg p => toCNF p
  | .conj p q => CNF.disj (negToCNF p) (negToCNF q)
  | .disj p q => CNF.conj (negToCNF p) (negToCNF q)
  | .impl p q => CNF.conj (toCNF p) (negToCNF q)
  | .eqv p q =>
      CNF.disj
        (CNF.conj (toCNF p) (negToCNF q))
        (CNF.conj (negToCNF p) (toCNF q))

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e7f0474cdb9cd11bf64cc7e8fe3e134524f6b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
