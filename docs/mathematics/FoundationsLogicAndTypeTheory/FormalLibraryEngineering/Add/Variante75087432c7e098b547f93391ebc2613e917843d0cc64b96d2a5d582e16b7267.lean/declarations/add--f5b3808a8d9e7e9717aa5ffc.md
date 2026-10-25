# add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4eb6e19dc97e767147e23a31d1c915e19d8b84fa68b9866433c9da02583cb6da",
  "kind": "def",
  "lexical_name": "add",
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
  "slug": "add--f5b3808a8d9e7e9717aa5ffc",
  "source": {
    "blob": "dec3a51eba738bdb5abf15f6402d62b92b7c9548",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variante75087432c7e098b547f93391ebc2613e917843d0cc64b96d2a5d582e16b7267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5b3808a8d9e7e9717aa5ffc70a20f9797577496049c99e170968fe2a5ab12ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variante75087432c7e098b547f93391ebc2613e917843d0cc64b96d2a5d582e16b7267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4eb6e19dc97e767147e23a31d1c915e19d8b84fa68b9866433c9da02583cb6da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def add (spec : Format) : UnpackedFloat → UnpackedFloat → UnpackedFloat
  | .notANumber, _ => .notANumber
  | _, .notANumber => .notANumber
  | .infinity sign₁, .infinity sign₂ =>
    if sign₁ == sign₂ then .infinity sign₁ else .notANumber
  | .infinity s, _ => .infinity s
  | _, .infinity s => .infinity s
  | .zero sign₁, .zero sign₂ =>
    if sign₁ == sign₂ then .zero sign₁ else .zero .positive
  | .zero _, y => y
  | x, .zero _ => x
  | .finite s₁ m₁ e₁ _, .finite s₂ m₂ e₂ _ =>
    let smallerExponent := min e₁ e₂
    let (m₁, _) := decreaseExponent m₁ e₁ smallerExponent
    let (m₂, _) := decreaseExponent m₂ e₂ smallerExponent
    let mantissa := s₁.apply m₁ + s₂.apply m₂
    normalize spec mantissa smallerExponent .positive

end Float.Model.UnpackedFloat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variante75087432c7e098b547f93391ebc2613e917843d0cc64b96d2a5d582e16b7267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variante75087432c7e098b547f93391ebc2613e917843d0cc64b96d2a5d582e16b7267.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dec3a51eba738bdb5abf15f6402d62b92b7c9548` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
