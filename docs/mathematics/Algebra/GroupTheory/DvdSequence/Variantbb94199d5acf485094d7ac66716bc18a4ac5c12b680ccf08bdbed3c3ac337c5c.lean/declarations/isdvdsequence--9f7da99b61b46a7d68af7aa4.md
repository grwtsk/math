# IsDvdSequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5beae8272dabec8dc6090241bc32dd1f9b1a3972fd924f6f979f0a69f41e5d82",
  "kind": "def",
  "lexical_name": "IsDvdSequence",
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
  "slug": "isdvdsequence--9f7da99b61b46a7d68af7aa4",
  "source": {
    "blob": "1b0b9f419daf7ba318ee52e5cd8f33f2a3db50e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/Algebra/GroupTheory/DvdSequence/Variantbb94199d5acf485094d7ac66716bc18a4ac5c12b680ccf08bdbed3c3ac337c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f7da99b61b46a7d68af7aa4392763cfa748a9ccce7ea280c925b9a853a5692f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DvdSequence/Variantbb94199d5acf485094d7ac66716bc18a4ac5c12b680ccf08bdbed3c3ac337c5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5beae8272dabec8dc6090241bc32dd1f9b1a3972fd924f6f979f0a69f41e5d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsDvdSequence [Dvd α] [Dvd β] (f : α → β) : Prop :=
  ∀ a b, a ∣ b → f a ∣ f b

@[deprecated (since := "2026-06-30")] alias IsDivSequence := IsDvdSequence

namespace IsDvdSequence

variable (α) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DvdSequence/Variantbb94199d5acf485094d7ac66716bc18a4ac5c12b680ccf08bdbed3c3ac337c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DvdSequence/Variantbb94199d5acf485094d7ac66716bc18a4ac5c12b680ccf08bdbed3c3ac337c5c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b0b9f419daf7ba318ee52e5cd8f33f2a3db50e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
