# Local application profile 0.1.0

[Taxonomy](index.md) · [Decisions](decisions/index.md) · [Validation](validation.md)

This is a static specification, not a validated schema implementation or a standards-conformance certificate. Vocabulary release, schema version, external editions and repository commits are independent identifiers.

## Canonical authoring

A canonical record is one Markdown file with YAML front matter. Front matter owns identity, record kind, labels, relation metadata, sources, warrants, status, revision history and section references. Named Markdown sections own definition, scope, examples and proposal/mapping rationale. They must not be copied into a second editable JSON/RDF or YAML definition. Rendered links and headings are views, not additional relation assertions.

The [registry](registry.md) is the sole editable identifier-to-path assignment. The page's navigation parent is an identifier, not an inferred directory-based semantic edge. URN UUIDs are persistent local identities, not promises of an HTTP resolver. Never recycle them. Source identifiers such as S1 and literature identifiers L1 are keys scoped to the authoritative [source register](standards/index.md), not external authority identifiers.

Required concept fields: `schema_version`, `id`, `record_kind`, `scheme`, `labels.preferred`, `labels.alternative`, `definition_section`, `scope_section`, `broader`, `navigation_parent`, `facets`, `relations`, `sources`, `warrant`, `status`, `rights`, `revision_history`, `proposal_refs`, `decision_refs`. Preferred labels have one nonempty value per language. Alternatives must carry the same language structure; an empty list means no alternatives documented, not no synonyms in the literature. A label assertion is a lexical value, not the concept itself. Separately managed term records, source documents, statements and artifacts have distinct record kinds and identities.

Allowed record families: `subject_concept`, `object_concept`, `structure_concept`, `method_concept`, `application_domain`, `resource_kind`, `term`, `source_document`, `external_scheme_entry`, `statement`, `software_artifact`, `repository_association`, `crosswalk`, `compound_crosswalk`, `proposal`, `decision`, `navigation_collection`, `validation_fixture`. A source's indexing provision is not automatically a subject_concept. Statements refine the #89 statement/theorem/conditional/open-premise distinctions instead of inventing synonymous proof states.

## Typed graph

`subjectSpecialization` has subject-concept endpoints within the local scheme. It means subject specialization, not membership of mathematical objects. Multiple justified parents are permitted. Only accepted direct edges enter the subject DAG. Its acyclicity is a local rule; SKOS itself does not universally forbid hierarchical cycles. A parent's division criterion describes the selected child grouping; directories do not supply that criterion.

`instanceOf`, `partOf`, `usesMethod`, `appliedIn`, `studiesObject`, `implementedBy` and `dependsOnArtifact` have their own endpoint profiles. In particular an application of a technique is not automatically subject specialization. `facet` links select independently combinable objects, structures, methods, application domains or resource kinds. Facet categories are navigation collections, not interchangeable mathematical disciplines.

The #89 families `implies`, `equivalentTo`, `requires`, `suppliesPremiseFor`, `discharges`, `refutes`, `formalizes`, `usesDefinitionFrom`, `supportedByCertificate`, `sourcedFrom` and `relevantTo` retain their source meanings. The additions in its inspected comments, including exact modeling/intertwining and norm-bound approximation, retain their separate premises. A taxonomy path cannot be traversed as any of these stronger mathematical relations. No Lean coercion, proof dependency, source recognition or equality follows from a browsing link.

Each semantic edge has a stable edge key scoped to its record, typed endpoints, direct/inferred status, editorial status, warrant/source references and rationale. In this pilot, `broader` entries are all direct proposed subjectSpecialization edges. Inverse narrower links in page bodies are navigational renderings of those entries and must agree with them. An accepted inverse or transitive closure is derived with a recorded rule and supporting direct edges, never counted as another observed edge.

## Crosswalks

Binary crosswalks bind both scheme editions and exact identifiers. They specify direction, mapping relation, rationale, sources, limitations, review status and history. `local broadMatch external` makes the external target broader. `narrowMatch` reverses that direction. `relatedMatch` is associative; `closeMatch` is not transitive or interchangeable with exactness. SKOS `exactMatch` is symmetric and transitive and supports cross-scheme retrieval interchangeability; it is neither mathematical equality nor owl:sameAs. Review its complete closure and contradictions before admission. Never infer exactness merely from matching labels.

A compound correspondence stores its explicit combination expression and intended indexing interpretation. The pilot's `coIndex` operator means use the selected external codes jointly to describe coverage, not set equality or an ontological intersection theorem. It has no lossless binary SKOS exactMatch lowering. An exporter must retain the compound record or report unsupported export, never emit several false exact matches.

Candidate/disputed/inaccessible/license-blocked mappings are kept out of the asserted production graph. Reviewed no-suitable-match is distinct from all of these. Proposed nodes may be browsable in the draft library without being admitted to production. The fixture namespace is always excluded from production even when a fixture's simulated editorial state is accepted.

## Independent status dimensions

Every record keeps editorial acceptance, mathematical novelty, proof status, attribution and operational permission separate. Subject records use proof `not_applicable`; source associations use the actual available source evidence. `operational_permission: not_conferred` is a non-authorization marker, not an authority record or dispatch grant. Actual operational approval/state stays in Noeaaeue.

Editorial lifecycle: proposed → under_review → accepted or rejected; accepted records can be superseded by explicit decisions. Rejected and superseded records remain addressable. Historical mappings retain their edition bindings. A changed label or path preserves identity only when mathematical scope is unchanged; splits/merges require explicit predecessor and replacement relations and cannot silently redirect to a broader/narrower concept.

## Repository associations and proposals

Repository associations are separate records with exact repository, commit, tree, path, mode, blob, module and selected declaration names. Record the inspected dependency context, scope of examination and evidence limitations. A source filename alone cannot supply a subject theorem; a source-only declaration cannot supply a kernel verdict.

Proposals distinguish additions, renamings, splits, merges, reparenting, mapping revisions, scope disputes and novelty claims. Required sections are problem, affected identities/revisions, evidence, alternatives, recommendation, before/after relationships, compatibility, acceptance criteria and retained rationale. New mathematics additionally needs an exact statement/construction, hypotheses, prior-art comparison, contribution claim, evidence, unresolved obligations and independent-review status. Literature absence, a new name or new formalization never suffices for originality.

## Export contract

No exporter is implemented here. Noeaaeue must consume an immutable math commit and schema version, preserve all canonical IDs, typed edges, statuses, provenance and external edition bindings, and distinguish asserted/inferred/fixture graphs. JSON/CSV/RDF exports are derived. A supported round trip compares normalized canonical records, not presentation order. Unsupported constructs, missing rights, changed source hashes or missing checks fail release eligibility rather than being dropped.

Standards basis: [SKOS Reference](https://www.w3.org/TR/skos-reference/) sections 8 and 10, [SKOS Primer](https://www.w3.org/TR/skos-primer/), the public ISO/NISO guidance identified in the source register, and [math #89](https://github.com/grwtsk/math/issues/89). These sources do not establish full conformance of this untested profile.
