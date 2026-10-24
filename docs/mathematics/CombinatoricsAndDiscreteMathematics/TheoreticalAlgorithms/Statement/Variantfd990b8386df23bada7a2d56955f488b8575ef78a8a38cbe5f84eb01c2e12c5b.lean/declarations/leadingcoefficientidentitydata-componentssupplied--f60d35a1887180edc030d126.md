# LeadingCoefficientIdentityData.componentsSupplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57d27bf6754354f78640780efa60903eb64238e418b91435b298bb48c48e3f74",
  "kind": "def",
  "lexical_name": "LeadingCoefficientIdentityData.componentsSupplied",
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
  "slug": "leadingcoefficientidentitydata-componentssupplied--f60d35a1887180edc030d126",
  "source": {
    "blob": "b700be4c1ae6b07a907e8d5b2847a96336d0ed80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f60d35a1887180edc030d1262a023ecda14abb087d96817c6c201972d0773663",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57d27bf6754354f78640780efa60903eb64238e418b91435b298bb48c48e3f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeadingCoefficientIdentityData.componentsSupplied
    (D : LeadingCoefficientIdentityData) :
    Prop :=
  D.leadingCoefficient = BSDComponentStatus.suppliedByCertificate ∧
  D.period = BSDComponentStatus.suppliedByCertificate ∧
  D.regulator = BSDComponentStatus.suppliedByCertificate ∧
  D.sha = BSDComponentStatus.suppliedByCertificate ∧
  D.tamagawaFactors = BSDComponentStatus.suppliedByCertificate ∧
  D.torsionOrder = BSDComponentStatus.suppliedByCertificate

/-- Second part: leading-coefficient identity metadata. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b700be4c1ae6b07a907e8d5b2847a96336d0ed80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
