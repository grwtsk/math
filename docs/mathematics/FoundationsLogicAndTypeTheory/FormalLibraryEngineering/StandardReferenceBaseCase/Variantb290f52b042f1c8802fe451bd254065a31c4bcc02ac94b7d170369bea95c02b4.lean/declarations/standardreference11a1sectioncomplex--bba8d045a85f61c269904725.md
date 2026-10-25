# standardReference11a1SectionComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ea3a65be6b52a249daff51dfeae47f37a67cf05823ca1e2bc7a6392570bf9f7",
  "kind": "def",
  "lexical_name": "standardReference11a1SectionComplex",
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
  "slug": "standardreference11a1sectioncomplex--bba8d045a85f61c269904725",
  "source": {
    "blob": "7e6494143e3c0f80942afd707269a60cfdc1dba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variantb290f52b042f1c8802fe451bd254065a31c4bcc02ac94b7d170369bea95c02b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bba8d045a85f61c2699047257645675eec2aacdcdc8780d08bfbcf2d9d2f361c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variantb290f52b042f1c8802fe451bd254065a31c4bcc02ac94b7d170369bea95c02b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ea3a65be6b52a249daff51dfeae47f37a67cf05823ca1e2bc7a6392570bf9f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def standardReference11a1SectionComplex :
    BaseCaseSectionComplex where
  arithmetic := standardReference11a1CertifiedCurve
  complex := standardReference11a1Complex
  euler := standardReference11a1Euler
  euler_nonzero := standardReference11a1Euler_nonzero
  complexRealizesLFunction := True
  complexRealizesLFunction_certified := trivial
  sourceLabel := "11a1 standard reference; external arithmetic witness"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variantb290f52b042f1c8802fe451bd254065a31c4bcc02ac94b7d170369bea95c02b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variantb290f52b042f1c8802fe451bd254065a31c4bcc02ac94b7d170369bea95c02b4.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e6494143e3c0f80942afd707269a60cfdc1dba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
