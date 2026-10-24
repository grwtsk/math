# bertrandProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2eef750e46478b8e2e91ec05574cc27372609c8cc4ca8e3497ebd0c2e3e183c",
  "kind": "def",
  "lexical_name": "bertrandProfile",
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
  "slug": "bertrandprofile--bf46b1b17fd0fe95e180153e",
  "source": {
    "blob": "ea5b8b1e1c764d0b7aa2aaf3ae9b476e9ecdb4f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 7,
    "path": "GRWTSK/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf46b1b17fd0fe95e180153e9aed2115e06a2db146d270304b724647d492b81e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2eef750e46478b8e2e91ec05574cc27372609c8cc4ca8e3497ebd0c2e3e183c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bertrandProfile : IntervalProfile Nat Nat where
  version := ⟨"https://w3id.org/reflexive", "bertrand-profile", "1.0.0", "sha256:bertrand-profile-v1"⟩
  sourceTheorem := ⟨"https://w3id.org/reflexive", "bertrand-theorem", "1.0.0", "sha256:bertrand-theorem-v1"⟩
  domainVersion := ⟨"https://w3id.org/reflexive", "bertrand-domain", "1.0.0", "sha256:bertrand-domain-v1"⟩
  lowerVersion := ⟨"https://w3id.org/reflexive", "bertrand-lower", "1.0.0", "sha256:bertrand-lower-v1"⟩
  upperVersion := ⟨"https://w3id.org/reflexive", "bertrand-upper", "1.0.0", "sha256:bertrand-upper-v1"⟩
  assumptionSet := ⟨"https://w3id.org/reflexive", "bertrand-assumptions", "1.0.0", "sha256:bertrand-assumptions-v1"⟩
  orientation := .Forward
  sourceNotation := "n < q < 2*n"
  domain := fun n => 1 < n
  lower := fun n => n
  upper := fun n => 2 * n
  lowerMode := .Open
  upperMode := .Open
  witnessQualifies := Nat.Prime
  order := Nat.lt

/-- Distinct domain-restricted profile for prime source inputs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5b8b1e1c764d0b7aa2aaf3ae9b476e9ecdb4f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
